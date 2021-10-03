##called when we click

##Reset
scoreboard players reset @s click

#####Seeing what we've clicked.

##If we're on the titles screen
execute if score @s screen matches 99 run function lobby:chest_menu/click_titles

##Main screen
execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:turtle_helmet"}] run function lobby:chest_menu/start_cosmetics

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:lodestone"}] run function lobby:chest_menu/start_personal_options

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:paper"}] run function lobby:chest_menu/start_leaderboards

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:nether_star"}] run function lobby:chest_menu/start_statistics

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:writable_book"}] run function lobby:chest_menu/start_journal

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:command_block"}] run function lobby:chest_menu/start_credits

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:teleport_to_tutorial

execute if score @s screen matches 0 unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] unless data entity @s EnderItems[{id:"minecraft:written_book"}] run function lobby:chest_menu/start_titles

##Cosmetics screen.
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:name_tag"}] run function lobby:chest_menu/start_suffixes
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:brick"}] run function lobby:chest_menu/start_punch
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:leather_chestplate"}] run function lobby:chest_menu/start_armor
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:gold_nugget"}] run function lobby:chest_menu/start_unlocks

##Personal options screen
execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start

execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:magma_block"}] run function lobby:chest_menu/toggle_upgrade_sounds

execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:compass"}] run function lobby:chest_menu/toggle_compass

execute if score @s screen matches 2 unless data entity @s[tag=!color_blind_mode] EnderItems[{id:"minecraft:melon_slice"}] run function lobby:chest_menu/toggle_color_blind_mode
execute if score @s screen matches 2 unless data entity @s[tag=color_blind_mode] EnderItems[{id:"minecraft:glistering_melon_slice"}] run function lobby:chest_menu/toggle_color_blind_mode

##Leaderboards screen
execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:gold_block"}] run function lobby:chest_menu/start_parkour_leaderboard

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:cracked_stone_bricks"}] run function lobby:chest_menu/start_castle_leaderboard

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:warped_wart_block"}] run function lobby:chest_menu/start_kingdom_leaderboard

##Parkour leaderboards screen.
execute if score @s screen matches 4 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 4 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_parkour_leaderboard

##Statistics screen
execute if score @s screen matches 5 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 5 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_statistics

##Journal screen
execute if score @s screen matches 6 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 6 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal_2
execute if score @s screen matches 6 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal

##Journal screen #2
execute if score @s screen matches 7 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal
##execute if score @s screen matches 7 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal_2
execute if score @s screen matches 7 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal_2

##Suffixes 1
execute if score @s screen matches 8 store result score $calculate calculate run clear @s name_tag{clickable:1} 0
execute if score @s screen matches 8 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_suffix_1
execute if score @s screen matches 8 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 8 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_suffixes_2
execute if score @s screen matches 8 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_suffixes

##Suffixes 2
execute if score @s screen matches 9 store result score $calculate calculate run clear @s name_tag{clickable:1} 0
execute if score @s screen matches 9 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_suffix_2
execute if score @s screen matches 9 run function lobby:chest_menu/change_suffix_2
execute if score @s screen matches 9 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_suffixes
execute if score @s screen matches 9 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_suffixes_3
execute if score @s screen matches 9 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_suffixes_2


##Suffixes 3
execute if score @s screen matches 10 store result score $calculate calculate run clear @s name_tag{clickable:1} 0
execute if score @s screen matches 10 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_suffix_3
execute if score @s screen matches 10 run function lobby:chest_menu/change_suffix_3
execute if score @s screen matches 10 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_suffixes_3
execute if score @s screen matches 10 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_suffixes_2

##Cosmetics Punch screen.
execute if score @s screen matches 11 store result score $calculate calculate run clear @s #minecraft:click{cosmetic:1} 0
execute if score @s screen matches 11 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_punch_effect
execute if score @s screen matches 11 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 11 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_punch

##Cosmetics Armor screen.
execute if score @s screen matches 12 store result score $calculate calculate run clear @s #minecraft:click{cosmetic:1} 0
execute if score @s screen matches 12 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_armor
execute if score @s screen matches 12 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 12 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_armor

##Credits
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:chain_command_block"}] run function lobby:chest_menu/start_team_credits
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:player_head"}] run function lobby:chest_menu/start_website_credits

##Team credits
execute if score @s screen matches 14 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_credits
execute if score @s screen matches 14 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:chest_menu/start_team_credits
execute if score @s screen matches 14 unless data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:chest_menu/view_testers

##Website credits
execute if score @s screen matches 15 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_credits
execute if score @s screen matches 15 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_website_credits

##Castle leaderboards screen.
execute if score @s screen matches 16 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 16 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_leaderboard


##Kingdom leaderboards screen.
execute if score @s screen matches 17 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 17 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_leaderboard

##Unlock screen
execute if score @s screen matches 18 if entity @s[advancements={advancements:wins-all=true}] unless data entity @s EnderItems[{Slot:2b,id:"minecraft:golden_chestplate"}] run scoreboard players set @s armor 14
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-parkour=true}] unless data entity @s EnderItems[{Slot:3b,id:"minecraft:elytra"}] run scoreboard players set @s armor 15
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-hardcore=true}] unless data entity @s EnderItems[{Slot:4b,id:"minecraft:chainmail_chestplate"}] run scoreboard players set @s armor 16
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-nightmare=true}] unless data entity @s EnderItems[{Slot:5b,id:"minecraft:netherite_chestplate"}] run scoreboard players set @s armor 17
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-titles=true}] unless data entity @s EnderItems[{Slot:6b,id:"minecraft:diamond_chestplate"}] run scoreboard players set @s armor 18

execute if score @s screen matches 18 if entity @s[advancements={advancements:lobby-all=true}] unless data entity @s EnderItems[{Slot:10b,id:"minecraft:oak_sign"}] run scoreboard players set @s prefix 263
execute if score @s screen matches 18 if entity @s[advancements={advancements:lobby-all=true}] unless data entity @s EnderItems[{Slot:10b,id:"minecraft:oak_sign"}] run function general:rank
execute if score @s screen matches 18 if entity @s[advancements={advancements:game-all=true}] unless data entity @s EnderItems[{Slot:11b,id:"minecraft:podzol"}] run scoreboard players set @s cosmetics_punch 18
execute if score @s screen matches 18 if entity @s[advancements={minecraft:completionist/completionist=true}] unless data entity @s EnderItems[{Slot:12b,id:"minecraft:gold_ingot"}] run function lobby:chest_menu/toggle_completionist_particles

execute if score @s screen matches 18 if entity @s[advancements={advancements:upgrade-all=true}] unless data entity @s EnderItems[{Slot:14b,id:"minecraft:name_tag"}] run scoreboard players set @s prefix 264
execute if score @s screen matches 18 if entity @s[advancements={advancements:upgrade-all=true}] unless data entity @s EnderItems[{Slot:14b,id:"minecraft:name_tag"}] run function general:rank

execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-journal=true}] unless data entity @s EnderItems[{Slot:15b,id:"minecraft:name_tag"}] run scoreboard players set @s prefix 265
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-journal=true}] unless data entity @s EnderItems[{Slot:15b,id:"minecraft:name_tag"}] run function general:rank

execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-titles=true}] unless data entity @s EnderItems[{Slot:16b,id:"minecraft:name_tag"}] run scoreboard players set @s prefix 266
execute if score @s screen matches 18 if entity @s[advancements={advancements:hidden/hidden-titles=true}] unless data entity @s EnderItems[{Slot:16b,id:"minecraft:name_tag"}] run function general:rank

execute if score @s screen matches 18 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_unlocks
execute if score @s screen matches 18 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics



##Sound
playsound minecraft:ui.button.click master @s[tag=!invalid_click] ~ ~ ~ 1 1


execute unless score $difficulty settings matches -1 if entity @s[team=!test,team=!help,team=!bld,team=!srbld,team=!prg,team=!srprg,team=!manager,team=!lead,team=!pc,team=!cr,team=!art,team=!unlock] run advancement grant @s[scores={cosmetics_punch=1..,armor=1..}] only advancements:lobby-cosmetic