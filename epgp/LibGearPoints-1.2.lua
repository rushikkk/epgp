-- A library to compute Gear Points for items as described in
-- http://code.google.com/p/epgp/wiki/GearPoints

local MAJOR_VERSION = "LibGearPoints-1.2"
local MINOR_VERSION = 10200

local lib, oldMinor = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local Debug = LibStub("LibDebug-1.0")
local ItemUtils = LibStub("LibItemUtils-1.0")

-- This is the high price equipslot multiplier.
-- Values adjusted to be proportional to the amount of stats provided by each slot in Legion
local EQUIPSLOT_MULTIPLIER_1 = {
  INVTYPE_HEAD = 1,
  INVTYPE_CHEST = 1,
  INVTYPE_ROBE = 1,
  INVTYPE_LEGS = 1,
  INVTYPE_WRIST = 0.56,
  INVTYPE_FINGER = 0.56,
  INVTYPE_CLOAK = 0.56,
  INVTYPE_NECK = 0.56,
  INVTYPE_SHOULDER = 0.75,
  INVTYPE_WAIST = 0.75,
  INVTYPE_FEET = 0.75,
  INVTYPE_HAND = 0.75,
  INVTYPE_TRINKET = 1.25,
  INVTYPE_RELIC = 0.667,

  -- The below are not relevant for Legion items, only for old
  INVTYPE_WEAPON = 1.5,
  INVTYPE_SHIELD = 1.5,
  INVTYPE_2HWEAPON = 2,
  INVTYPE_WEAPONMAINHAND = 1.5,
  INVTYPE_WEAPONOFFHAND = 0.5,
  INVTYPE_HOLDABLE = 0.5,
  INVTYPE_RANGED = 2.0,
  INVTYPE_RANGEDRIGHT = 2.0,
  INVTYPE_THROWN = 0.5,

  -- SL WEAPON'S TOKENS
  INVTYPE_SL_WEAPON_MH_2H = 1.5,
  INVTYPE_SL_WEAPON_OH = 0.5,
}

-- This is the low price equipslot multiplier (off hand weapons, non
-- tanking shields).
local EQUIPSLOT_MULTIPLIER_2 = {
  INVTYPE_SL_WEAPON_MH_2H = 0.5,
  INVTYPE_WEAPON = 0.5,
  INVTYPE_2HWEAPON = 0.5,
  INVTYPE_SHIELD = 0.5,
  INVTYPE_RANGEDRIGHT = 1.5
}

-- Used to display GP values directly on tier tokens; keys are itemIDs,
-- values are inventory slot.
local CUSTOM_ITEM_DATA = {
  -- SL T1 RAID WEAPON'S TOKENS
  [183888] = "INVTYPE_SL_WEAPON_OH",
  [183889] = "INVTYPE_SL_WEAPON_OH",
  [183890] = "INVTYPE_SL_WEAPON_MH_2H",
  [183891] = "INVTYPE_SL_WEAPON_MH_2H",
  [183892] = "INVTYPE_SL_WEAPON_MH_2H",
  [183893] = "INVTYPE_SL_WEAPON_MH_2H",
  -- SL T1 RAID WEAPON'S TOKENS FROM LAST TWO BOSSES
  [183898] = "INVTYPE_SL_WEAPON_OH",
  [183899] = "INVTYPE_SL_WEAPON_OH",
  [183894] = "INVTYPE_SL_WEAPON_MH_2H",
  [183895] = "INVTYPE_SL_WEAPON_MH_2H",
  [183896] = "INVTYPE_SL_WEAPON_MH_2H",
  [183897] = "INVTYPE_SL_WEAPON_MH_2H",
}

-- Used to add extra GP if the item contains bonus stats
-- generally considered chargeable.
local ITEM_BONUS_GP = {
  [40]  = 50,  -- avoidance, no material value
  [41]  = 50,  -- leech, no material value
  [42]  = 50,  -- speed, arguably useful, so 25 gp
  [43]  = 0,  -- indestructible, no material value
  [1808] = 200, -- extra socket
  [3475] = 200, -- extra socket
  [3522] = 200, -- extra socket
  [4802] = 200, -- extra socket
  [6514] = 200, -- extra socket
  [6672] = 200, -- extra socket
  [9395] = 200, -- extra socket
}

-- The default quality threshold (4 - Epic):
local quality_threshold = 4

local recent_items_queue = {}
local recent_items_map = {}

local function UpdateRecentLoot(itemLink)
  if recent_items_map[itemLink] then return end

  -- Debug("Adding %s to recent items", itemLink)
  table.insert(recent_items_queue, 1, itemLink)
  recent_items_map[itemLink] = true
  if #recent_items_queue > 15 then
    local itemLink = table.remove(recent_items_queue)
    -- Debug("Removing %s from recent items", itemLink)
    recent_items_map[itemLink] = nil
  end
end

function lib:GetNumRecentItems()
  return #recent_items_queue
end

function lib:GetRecentItemLink(i)
  return recent_items_queue[i]
end

--- Return the currently set quality threshold.
function lib:GetQualityThreshold()
  return quality_threshold
end

--- Set the minimum quality threshold.
-- @param itemQuality Lowest allowed item quality.
function lib:SetQualityThreshold(itemQuality)
  itemQuality = itemQuality and tonumber(itemQuality)
  if not itemQuality or itemQuality > 6 or itemQuality < 0 then
    return error("Usage: SetQualityThreshold(itemQuality): 'itemQuality' - number [0,6].", 3)
  end

  quality_threshold = itemQuality
end

function lib:GetValue(item)
  if not item then return end

  local _, itemLink, rarity, level, _, itemClass, itemSubClass, _, equipLoc = GetItemInfo(item)
  if not itemLink then return end

  -- Get the item ID to check against known token IDs
  local itemID = itemLink:match("item:(%d+)")
  if not itemID then return end
  itemID = tonumber(itemID)

  -- For now, just use the actual ilvl, not the upgraded cost
  -- level = ItemUtils:GetItemIlevel(item, level)

  -- Check if item is relevant.
  if level < 200 then
    return nil, nil, level, rarity, equipLoc
  end

  -- Get the bonuses for the item to check against known bonuses
  local itemBonuses = ItemUtils:BonusIDs(itemLink)

  -- Check to see if there is custom data for this item ID
  if CUSTOM_ITEM_DATA[itemID] then
    equipLoc = CUSTOM_ITEM_DATA[itemID]
    if not level then
      return error("GetValue(item): could not determine item level from CUSTOM_ITEM_DATA.", 3)
    end
  end

  -- Is the item above our minimum threshold?
  if not rarity or rarity < quality_threshold then
    return nil, nil, level, rarity, equipLoc
  end

  -- Does the item have bonus sockets or tertiary stats?  If so,
  -- set extra GP to apply later.  We don't care about warforged
  -- here as that uses the increased item level instead.
  local extra_gp = 0
  for _, value in pairs(itemBonuses) do
    extra_gp = extra_gp + (ITEM_BONUS_GP[value] or 0)
  end

  UpdateRecentLoot(itemLink)

  local slot_multiplier1 = EQUIPSLOT_MULTIPLIER_1[equipLoc]
  local slot_multiplier2 = EQUIPSLOT_MULTIPLIER_2[equipLoc]

  if not slot_multiplier1 then
    return nil, nil, level, rarity, equipLoc
  end
  -- 0.06973 is our coefficient so that ilvl 359 chests cost exactly
  -- 1000gp.  In 4.2 and higher, we renormalize to make ilvl 378
  -- chests cost 1000.  Repeat ad infinitum!
  local standard_ilvl = 200
  local ilvl_denominator = 22.22 -- 26
  local version = select(4, GetBuildInfo())
  -- local level_cap = GetMaxLevelForExpansionLevel(GetExpansionLevel())
  local level_cap = 60

  local multiplier = 1000 * 2 ^ (-standard_ilvl / ilvl_denominator)
  local gp_base = multiplier * 2 ^ (level/ilvl_denominator)
  local high = math.floor(0.5 + gp_base * slot_multiplier1) + extra_gp
  local low = slot_multiplier2 and math.floor(0.5 + gp_base * slot_multiplier2) + extra_gp or nil
  return high, low, level, rarity, equipLoc
end
