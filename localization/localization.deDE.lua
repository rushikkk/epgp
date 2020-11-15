local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "deDE")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) gehen an %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) gehen an %s"
L["%d or %d"] = "%d oder %d"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - \"on\" oder \"off\" erwartet, oder kein Parameter zum Umschalten."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - \"on\", \"off\" oder \"default\" erwartet, oder kein Parameter zum Umschalten."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - erwartet 'RRGGBB' oder 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - erwartet 'RRGGBBAA' oder 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' - Ungültige Tastenbelegung"
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - Alle Werte müssen innerhalb von 0..1 oder 0..255 liegen."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - Alle Werte müssen innerhalb von 0-1 oder 0-255 liegen."
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - \"on\" oder \"off\" erwartet, oder kein Parameter zum Umschalten."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - \"on\", \"off\" oder \"default\" erwartet, oder kein Parameter zum Umschalten."
L["%s is added to the award list"] = "%s wurde der Belohnungsliste hinzugefügt"
L["%s is already in the award list"] = "%s gehört bereits der Belohnungsliste an"
L["%s is dead. Award EP?"] = "%s ist tot. Mit EP belohnen?"
L["%s is not eligible for EP awards"] = "%s ist nicht für EP Belohnungen berechtigt"
L["%s is now removed from the award list"] = "%s wurde von der Belohnungsliste entfernt"
L["%s to %s"] = "%s an %s"
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) an %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) an %s"
L["%s: %s to %s"] = "%s: %s an %s"
L["A member is awarded EP"] = "Ein Mitglied hat EP erhalten"
L["A member is credited GP"] = "Einen Mitglied wurden GP angerechnet"
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Es gibt eine neue Ausrüstungsstufe! Du solltet vielleicht alle GP-Werte zurücksetzen oder neu skalieren (Interface -> Optionen -> AddOns -> EPGP)!"
L["Alts"] = "Twinks"
L["An item was disenchanted or deposited into the guild bank"] = "Ein Gegenstand wurde entzaubert oder in die Gildenbank gelegt"
L["Announce"] = "Ankündigen"
--Translation missing 
-- L["Announce epic loot from corpses"] = ""
L["Announce medium"] = "Ankündigungsmedium"
--Translation missing 
-- L["Announce when someone in your raid derps a bonus roll"] = ""
--Translation missing 
-- L["Announce when someone in your raid wins something good with bonus roll"] = ""
L["Announce when:"] = "Ankündigen wenn:"
L["Announcement of EPGP actions"] = "Bekanntgabe von EPGP-Aktionen"
L["Announces EPGP actions to the specified medium."] = "Gibt EPGP-Aktionen an das angegebene Medium aus."
L["Automatic boss tracking"] = "Automatisches Boss-Tracking"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Automatisches Boss-Tracking bedeutet, daß nach einem Bosskill ein Popup erscheint, wo EP an alle im Schlachtzug und auf der Bereitschaftsliste vergeben werden kann"
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Automatisches Verwalten der Bereitschaftsliste durch Anflüstern im Schlachtzug. Ist diese Option aktiviert, wird die Bereitschaftsliste bei jeder Belohnungsvergabe gelöscht."
L["Automatic loot tracking"] = "Automatische Beuteverfolgung"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Automatisches Loot-Tracking bedeutet, es erscheint ein Popup zur Vergabe von GP an den, der den Loot erhalten hat. Diese Option ist nur in einem Raid aktiv, und nur, wenn du Raidleader oder Plündermeister bist."
L["Award EP"] = "Vergib EP"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Belohnungen für Wipes bei Bossen. Benötigt DBM, DXE oder BigWigs."
L["Base GP should be a positive number"] = "Die Basis GP sollten eine positive Nummer sein"
--Translation missing 
-- L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = ""
--Translation missing 
-- L["Bonus roll for %s (%s left): got gold"] = ""
L["Boss"] = true
L["Credit GP"] = "Vergib GP"
L["Credit GP to %s"] = "Vergib GP an %s"
L["Custom announce channel name"] = "Benutzerdefinierter Nachrichtenkanal"
L["Decay"] = "Wertverfall"
L["Decay EP and GP by %d%%?"] = "EP und GP um %d%% verringern?"
L["Decay of EP/GP by %d%%"] = "Verfall von EP/GP um %d%%"
L["Decay Percent should be a number between 0 and 100"] = "Der Wert des Wertverfalls muss zwischen 0 und 100 liegen"
L["Decay=%s%% BaseGP=%s MinEP=%s Extras=%s%%"] = "Verfall=%s%% GrundGP=%s MinEP=%s Extras=%s%%"
L["default"] = "Standard"
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Soll mit der Vergabe der Beute (%s) für %d EP/%s weitergemacht werden?"
L["EP Reason"] = "EP Grund"
L["EP/GP are reset"] = "EP/GP wurden zurückgesetzt"
L["EPGP decay"] = "EPGP Verfall"
L["EPGP is an in game, relational loot distribution system"] = "EPGP ist ein relationales Lootverteilungssystem, welches im Spiel verwaltet wird"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP benutzt Offiziersnotizen zum Speichern von Daten. Willst du wirklich die Offiziersnotiz bearbeiten?"
L["EPGP reset"] = "EPGP zurücksetzen"
L["expected number"] = "Nummer erwartet"
L["Export"] = "Exportieren"
L["Extras Percent should be a number between 0 and 100"] = "Der Extras-Prozentwert sollte eine Zahl zwischen 0 und 100 sein"
L["GP (not EP) is reset"] = "GP (nicht EP) wurden zurückgesetzt"
L["GP (not ep) reset"] = "GP (nicht EP) zurücksetzen"
L["GP is rescaled for the new tier"] = "GP wurden für die neue Ausrüstungsstufe umskaliert"
L["GP on tooltips"] = "GP in Tooltips"
L["GP Reason"] = "GP Grund"
L["GP rescale for new tier"] = "GP Umskalierung für neue Ausrüstungsstufe"
L["GP: %d"] = true
L["GP: %d or %d"] = "GP: %d oder %d"
L["Guild or Raid are awarded EP"] = "Gilde oder Schlachtzug bekommen EP"
L["Hint: You can open these options by typing /epgp config"] = "Hinweis: Du kannst die Einstellungen mit dem Befehl \"/epgp config\" aufrufen."
L["Idle"] = "Untätig"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Wenn du auf der Bereitschaftsliste sein möchtest, aber nicht im Schlachtzug dabei bist, mußt du mich mit folgendem Text anflüstern: \"epgp standby\" oder \"epgp standby <name>\" wobei <name> der Charakter ist welche die Belohnungen erhalten soll"
L["Ignoring EP change for unknown member %s"] = "Ignoriere EP-Änderung für das unbekannte Mitglied %s"
L["Ignoring GP change for unknown member %s"] = "Ignoriere GP-Änderung für das unbekannte Mitglied %s"
L["Import"] = "Importieren"
L["Importing data snapshot taken at: %s"] = "Importiere Schnappschuß vom: %s"
L["invalid input"] = "Fehlerhafte Eingabe"
L["Invalid officer note [%s] for %s (ignored)"] = "Ungültige Offiziersnotiz [%s] für %s (ignoriert)"
L["List errors"] = "Fehler anzeigen"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Zeige Fehler beim Verarbeiten der Offiziersnotizen im Standard Chatfenster. Zum Beispiel: Mitglieder mit ungültigen Offiziersnotizen."
L["Loot"] = "Beute"
L["Loot tracking threshold"] = "Loot-Tracking-Grenzwert"
--Translation missing 
-- L["Main"] = ""
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Stelle bitte sicher, dass Du die einzige Person bist, die gerade EP und GP verändert. Wenn mehrere Personen EP und GP zur gleichen Zeit verändern, zum Beispiel jemand vergibt gerade EP und jemand anderes schreibt gerade GP gut, wird es zu Datenverlust kommen."
L["Mass EP Award"] = "Massenvergabe von EP"
L["Min EP should be a positive number"] = "Min EP sollte eine positive Nummer sein"
L["must be equal to or higher than %s"] = "Muss gleich oder höher sein als %s"
L["must be equal to or lower than %s"] = "Muss gleich oder niedriger sein als %s"
L["Next award in "] = "Nächste Belohnung in"
L["off"] = "Deaktiviert"
L["on"] = "Aktiviert"
L["Only display GP values for items at or above this quality."] = "Zeige GP-Werte nur für Gegenstände dieser oder höherer Qualität."
L["Open the configuration options"] = "Einstellungen öffnen"
L["Open the debug window"] = "Debug-Fenster öffnen"
L["Other"] = "Anderes"
L["Outsiders should be 0 or 1"] = "Außenstehende (Outsiders) sollte 0 oder 1 sein."
L["Paste import data here"] = "Daten zum Importieren hier einfügen"
L["Personal Action Log"] = "Persönliches Aktionslog"
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Gibt einen GP-Vorschlag in den Tooltips an. Questitems oder handelbare Set-Tokens werden auch einen GP-Vorschlag enthalten."
L["Quality threshold"] = "Qualitätsschwelle"
L["Recurring"] = "Wiederkehrend"
L["Recurring awards resume"] = "Wiederkehrende Belohnung fortsetzen"
L["Recurring awards start"] = "Wiederkehrende Belohnungen starten"
L["Recurring awards stop"] = "Wiederkehrende Belohnungen stoppen"
L["Redo"] = "Erneut ausführen"
L["Re-scale all main toons' GP to current tier?"] = "Alle GP Werte der Hauptcharaktere umskalieren?"
L["Rescale GP"] = "GP Umskalieren"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Umskalieren der GP aller Gildenmitglieder. Dies wird die GP aller Hauptcharaktere um den Wert einer Ausrüstungsstufe verringern. Mit Vorsicht verwenden!"
L["Reset all main toons' EP and GP to 0?"] = "EP und GP aller Hauptcharaktere auf 0 zurücksetzen?"
L["Reset all main toons' GP to 0?"] = "GP aller Hauptcharaktere auf 0 zurücksetzen?"
L["Reset EPGP"] = "EPGP zurücksetzen"
L["Reset only GP"] = "Nur GP zurücksetzen"
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Zurücksetzen der EP und GP Werte aller Gildenmitglieder. Dies wird die EP und GP aller Hauptcharaktere auf 0 zurücksetzen. Mit Vorsicht verwenden!"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Setzt die GP (nicht EP!) aller Gildenmitglieder zurück. Dies wird die GP aller Hauptcharaktere auf 0 zurücksetzen. Mit Vorsicht verwenden!"
L["Resume recurring award (%s) %d EP/%s"] = "Wiederkehrende Belohnung fortsetzen (%s) für %d EP/%s"
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Setzt den Loot-Tracking-Grenzwert, um das Popup für Loot unterhalb dieser Itemqualität zu deaktivieren."
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Wählt das Medium, welches EPGP verwendet wird um EPGP Aktionen anzukündigen"
L["Sets the custom announce channel name used to announce EPGP actions."] = "Wählt den Namen des selbst gewählten Chatkanals um EPGP Aktionen anzukündigen."
L["Show everyone"] = "Zeige Alle"
L["Some english word"] = "Ein zufälliges Wort"
L["Some english word that doesn't exist"] = "Ein zufälliges Wort welches nicht existiert"
L["Standby"] = "Bereitschaftsliste"
L["Standby whispers in raid"] = "Flüstern für Bereitschaftsliste im Schlachtzug"
L["Start recurring award (%s) %d EP/%s"] = "Starte wiederkehrende Belohnung (%s) %d EP/%s"
L["Stop recurring award"] = "Stoppe wiederkehrende Belohnung"
L["string1"] = "Zeichenkette1"
L["The imported data is invalid"] = "Die importierten Daten sind ungültig"
L["To export the current standings, copy the text below and post it to: %s"] = "Um die aktuellen Werte zu exportieren, kopiere den Text von unten und füge ihn hier ein: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Um einen früheren Stand der Werte wiederherzustellen, kopiere den Text von %s und füge ihn hier ein:"
L["Tooltip"] = true
L["Undo"] = "Rückgängig machen"
L["unknown argument"] = "Unbekanntes Argument"
L["unknown selection"] = "Unbekannte Auswahl"
L["Using %s for boss kill tracking"] = "%s zeichnet die Bosskills auf."
L["Value"] = "Wert"
L["Whisper"] = "Flüstern"
L["Wipe awards"] = "Wipe Belohnungen"
L["Wiped on %s. Award EP?"] = "Wipe bei %s. EP Verteilen?"
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Du kannst deine EPGP-Werte und die Beute jetzt auch im Internet sehen: http://www.epgpweb.com"

