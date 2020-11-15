local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "ptBR")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) para %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) para %s"
L["%d or %d"] = "%d ou %d"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - esperado 'ligado' ou 'desligado', ou nenhum argumento para alternar."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - esperado 'ligado', 'desligado' ou 'padrão', ou nenhum argumento para alternar."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - esperado 'RRGGBB' ou 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - esperado 'RRGGBBAA' ou 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' - Atalho Inválido."
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - os valores devem estar todos no alcance de 0..1 ou 0..255."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - os valores devem estar todos no alcance de 0-1 ou 0-255."
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - esperado 'ligado' ou 'desligado', ou nenhum argumento para alternar."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - esperado 'ligado', 'desligado' ou 'padrão', ou nenhum argumento para alternar."
L["%s is added to the award list"] = "%s  foi adicionado à lista de recompensa"
L["%s is already in the award list"] = "%s já está na lista de recompensa"
L["%s is dead. Award EP?"] = "%s está morto. Recompensar com EP?"
L["%s is not eligible for EP awards"] = "%s não é elegível para recompensas de EP"
L["%s is now removed from the award list"] = "%s foi removido da lista de recompensas"
L["%s to %s"] = "%s para %s"
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) para %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) para %s"
L["%s: %s to %s"] = "%s: %s para %s"
L["A member is awarded EP"] = "Um membro for recompensado com EP"
L["A member is credited GP"] = "Um membro for creditado com GP"
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Um novo tier chegou! Você provavelmente deveria resetar ou reescalar o GP (Interface -> Opções -> AddOns -> EPGP)!"
L["Alts"] = true
L["An item was disenchanted or deposited into the guild bank"] = "Um item foi desencantado ou depositado no banco da guilda"
L["Announce"] = "Anunciar"
L["Announce epic loot from corpses"] = "Anunciar saques épicos de corpos"
L["Announce medium"] = "Meio de anúncio"
L["Announce when someone in your raid derps a bonus roll"] = "Anunciar quando alguém na sua raide falhar na rolagem de bônus"
L["Announce when someone in your raid wins something good with bonus roll"] = "Anunciar quando alguém na sua raide ganhar algo bom com a rolagem de bônus"
L["Announce when:"] = "Anunciar quando:"
L["Announcement of EPGP actions"] = "Anúncio de ações EPGP"
L["Announces EPGP actions to the specified medium."] = "Anúncia ações EPGP para o meio especificado."
L["Automatic boss tracking"] = "Rastrear boss automaticamente"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Rastrear um boss automaticamente significa que quando um boss for morto irá aparecer um popup para recompensar em massa a raid e os membros da lista de recompensas."
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Manipulando automaticamente a lista de recompesa por meio de \"whispers\" quando estiver em raid. Enquanto esta opção estiver ativa a lista de recompensa será zerada a cada recompensa dada."
L["Automatic loot tracking"] = "Rastreando automaticamente o loot"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Rastreamento automático de loot significa que um popup irá aparecer para creditar GP para o personagem que recebeu o loot. Esta opção só tem efeito se você está em uma raid e você é o \"Raid leader\" ou o \"Master Looter\"."
L["Award EP"] = "Dar EP"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Recompensa para wipes em \"boss\". Requer DBM, DXE ou BigWigs"
L["Base GP should be a positive number"] = "O GP base deve ser um número positivo"
L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = "Rolagem bônus para %s (%s restante): ganhou %s (ilvl %d)"
L["Bonus roll for %s (%s left): got gold"] = "Rolagem bônus para %s (%s restante): ganhou ouro"
L["Boss"] = true
L["Credit GP"] = "Creditar GP"
L["Credit GP to %s"] = "Creditar GP para %s"
L["Custom announce channel name"] = "Nome do canal personalizado de anúncios"
L["Decay"] = "Decair"
L["Decay EP and GP by %d%%?"] = "Decair o EP e GP em %d%%?"
L["Decay of EP/GP by %d%%"] = "Decaindo o EP/GP em %d%%"
L["Decay Percent should be a number between 0 and 100"] = "O Percentual para Decair deve ser um número entre 0 e 100"
L["Decay=%s%% BaseGP=%s MinEP=%s Extras=%s%%"] = "Decair=%s%% GPBase=%s EPMin=%s Extra=%s%%"
L["default"] = "padrão"
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Você deseja retomar a recompensa recorrente (%s) %d EP/%s?"
L["EP Reason"] = "Motivo do EP"
L["EP/GP are reset"] = "EP/GP resetados"
L["EPGP decay"] = "Houver decadência do EPGP"
L["EPGP is an in game, relational loot distribution system"] = "EPGP é um sistema relacional de distribuição de loot interno ao jogo"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "O EPGP está usando os \"Officer Notes\" para armazenar os dados. Você deseja realmente editar o \"Officer Note\" manualmente?"
L["EPGP reset"] = "Resetar o EPGP"
L["expected number"] = "número esperado"
L["Export"] = "Exportar"
L["Extras Percent should be a number between 0 and 100"] = "O percentual de extras deve ser um número entre 0 e 100"
L["GP (not EP) is reset"] = "GP (não EP) foi resetado"
L["GP (not ep) reset"] = "GP (não ep) resetado"
L["GP is rescaled for the new tier"] = "GP foi redimensionado para o novo tier"
L["GP on tooltips"] = "GP nas tooltips"
L["GP Reason"] = "Motivo do GP"
L["GP rescale for new tier"] = " Redimensionamento de GP para o novo tier"
L["GP: %d"] = true
L["GP: %d or %d"] = "GP: %d ou %d"
L["Guild or Raid are awarded EP"] = "Guilda ou Raid forem recompensados com EP"
L["Hint: You can open these options by typing /epgp config"] = "Dica: Você pode abrir estas opções digitando /epgp config"
L["Idle"] = "Inativo"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Se você deseja estar na lista de recompensas EP mas você não está na raid, você precisa me enviar um \"whisper\" com: 'epgp standby' ou 'epgp standby <nome>' onde <nome> é o personagem que deverá receber as recompensas"
L["Ignoring EP change for unknown member %s"] = "Ignorando mudança no EP de membro desconhecido %s"
L["Ignoring GP change for unknown member %s"] = "Ignorando mudança no GP de membro desconhecido %s"
L["Import"] = "Importar"
L["Importing data snapshot taken at: %s"] = "Importando dados salvos em: %s"
L["invalid input"] = "entrada inválida"
L["Invalid officer note [%s] for %s (ignored)"] = "\"Officer note\" inválida [%s] para %s (ignorada)"
L["List errors"] = "Listar erros"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Lista os erros durante a análise das \"Officer Note\" na janela de bate papo padrão. Exemplos são membros com \"officer note\" inválida"
L["Loot"] = true
L["Loot tracking threshold"] = "Qualidade do loot"
L["Main"] = "Principal"
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Tenha certeza de que você é a única pessoa modificando o EP e GP. Se houver várias pessoas modificando o EP e GP na mesma hora, por exemplo, um recompensando EP e outro creditando GP, haverá perda de dados."
L["Mass EP Award"] = "EP em massa"
L["Min EP should be a positive number"] = "O EP mínimo deve ser um número positivo"
L["must be equal to or higher than %s"] = "deve ser igual ou maior que %s"
L["must be equal to or lower than %s"] = "deve ser igual ou menor que %s"
L["Next award in "] = "Próxima recompensa em"
L["off"] = "desligado"
L["on"] = "ligado"
L["Only display GP values for items at or above this quality."] = "Apenas mostrar o valor do GP de items desta qualidade ou acima."
L["Open the configuration options"] = "Abrir as opções de configuração"
L["Open the debug window"] = "Abrir a janela de debug"
L["Other"] = "Outro"
L["Outsiders should be 0 or 1"] = "Forasteiros deve ser 0 ou 1"
L["Paste import data here"] = "Copiar dados de importação aqui"
L["Personal Action Log"] = "Histórico pessoal de ações"
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Propõe um valor de GP para os armamentos nas tooltips. Items de \"quest\" ou \"tokens\" que podem ser trocados por armamentos possuirão também um valor de GP proposto."
L["Quality threshold"] = "Qualidade do Loot"
L["Recurring"] = "Recorrente"
L["Recurring awards resume"] = "As recompensas recorrentes foram retomadas"
L["Recurring awards start"] = "As recompensas recorrentes foram iniciadas"
L["Recurring awards stop"] = "As recompensas recorrentes foram paradas"
L["Redo"] = "Refazer"
L["Re-scale all main toons' GP to current tier?"] = "Redimensionar o GP de todos os personagens principais para o novo tier?"
L["Rescale GP"] = "Redimensionar GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Redimnensionar GP de todos os membros da guilda. Isso reduzirá o GP de todos os personagens principais por um valor equivalente à um tier. Use com cuidado!"
L["Reset all main toons' EP and GP to 0?"] = "Resetar o EP e GP de todos os personagens principais para 0 ?"
L["Reset all main toons' GP to 0?"] = "Resetar o GP de todos os personagens principais para 0?"
L["Reset EPGP"] = "Resetar EPGP"
L["Reset only GP"] = "Resetar somente GP"
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Reseta o EP e o GP de todos os membros da guilda. Isto irá definir o EP e GP de todos os personagens principais para 0. Use com cuidado!"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Reseta o GP (não o EP!) de todos os membros da guilda. Isso definirá o GP de todos os personagens principais para 0. Use com cuidado!"
L["Resume recurring award (%s) %d EP/%s"] = "Retomando a recompensa recorrente (%s) %d EP/%s"
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Define o rastreamento de qualidade do loot para desativar o popup de loot quando for abaixo desta qualidade."
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Define o anúncio médio que o EPGP irá utilizar para anunciar as ações do EPGP."
L["Sets the custom announce channel name used to announce EPGP actions."] = "Define o nome do canal personalizado para utilizado para anunciar as ações do EPGP."
L["Show everyone"] = "Mostrar todos"
L["Some english word"] = "Uma palavra aleatória"
L["Some english word that doesn't exist"] = "Uma palavra aleatória que não existe"
L["Standby"] = "Espera"
L["Standby whispers in raid"] = "Membros na raid que enviaram sussurros para a lista de recompensa"
L["Start recurring award (%s) %d EP/%s"] = "Iniciando a recompensa recorrente (%s) %d EP/%s"
L["Stop recurring award"] = "Parando a recompensa recorrente"
L["string1"] = true
L["The imported data is invalid"] = "Os dados importados são inválidos"
L["To export the current standings, copy the text below and post it to: %s"] = "Para exportar a atual classificação, copie o texto abaixo e cole em: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Para restaurar para uma versão anterior da classificação de EPGP, copie e cole o texto de: %s"
L["Tooltip"] = true
L["Undo"] = "Desfazer"
L["unknown argument"] = "argumento desconhecido"
L["unknown selection"] = "seleção desconhecida"
L["Using %s for boss kill tracking"] = "Usando %s para rastrear morte de boss"
L["Value"] = "Valor"
L["Whisper"] = "Sussurro"
L["Wipe awards"] = "Recompensar Wipes"
L["Wiped on %s. Award EP?"] = "Wipe em %s. Recompensar EP?"
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Você pode verificar agora a classificação do EPGP e loot na internet: http://www.epgpweb.com"

