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

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:skull_pottery_sherd"}] run function lobby:chest_menu/start_trials

execute if score @s screen matches 0 unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] unless data entity @s EnderItems[{id:"minecraft:written_book"}] run function lobby:chest_menu/start_titles

##Cosmetics screen.
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:name_tag"}] run function lobby:chest_menu/start_suffixes
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:brick"}] run function lobby:chest_menu/start_punch
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:leather_chestplate"}] run function lobby:chest_menu/start_armor
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:gold_nugget"}] run function lobby:chest_menu/start_unlocks
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:shaper_armor_trim_smithing_template"}] run function lobby:chest_menu/start_armor_trims

##Personal options screen
execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:magma_block"}] run function lobby:chest_menu/toggle_upgrade_sounds
execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:compass"}] run function lobby:chest_menu/toggle_compass

execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:prismarine_crystals"}] run function lobby:chest_menu/toggle_group_spawning
execute if score @s screen matches 2 unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run function lobby:chest_menu/toggle_crossbow

execute if score @s screen matches 2 unless data entity @s[tag=!color_blind_mode] EnderItems[{id:"minecraft:melon_slice"}] run function lobby:chest_menu/toggle_color_blind_mode
execute if score @s screen matches 2 unless data entity @s[tag=color_blind_mode] EnderItems[{id:"minecraft:glistering_melon_slice"}] run function lobby:chest_menu/toggle_color_blind_mode

##Leaderboards screen
execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:gold_block"}] run function lobby:chest_menu/start_parkour_leaderboard

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:cracked_stone_bricks"}] run function lobby:chest_menu/start_castle_leaderboard_menu

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:warped_wart_block"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:polished_andesite"}] run function lobby:chest_menu/start_dungeon_leaderboard

execute if score @s screen matches 3 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_leaderboards_2

##Leaderboards screen 2
execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards

execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:orange_concrete_powder"}] run function lobby:chest_menu/start_hard_menu

execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:red_concrete_powder"}] run function lobby:chest_menu/start_super_hard_menu

execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:brown_concrete_powder"}] run function lobby:chest_menu/start_hardcore_menu

execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:black_concrete_powder"}] run function lobby:chest_menu/start_nightmare_menu


execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:diamond_block"}] run function lobby:chest_menu/start_games_played_leaderboard

execute if score @s screen matches 30 unless data entity @s EnderItems[{id:"minecraft:redstone_block"}] run function lobby:chest_menu/start_accuracy_leaderboard

##Hard leaderboards menu
execute if score @s screen matches 39 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 39 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_hard_coop
execute if score @s screen matches 39 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_hard_solo
execute if score @s screen matches 39 unless data entity @s EnderItems[{id:"minecraft:orange_concrete_powder"}] run function lobby:chest_menu/start_hard_menu

##Super Hard leaderboards menu
execute if score @s screen matches 40 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 40 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_super_hard_coop
execute if score @s screen matches 40 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_super_hard_solo
execute if score @s screen matches 40 unless data entity @s EnderItems[{id:"minecraft:red_concrete_powder"}] run function lobby:chest_menu/start_super_hard_menu

##Hardcore leaderboards menu
execute if score @s screen matches 41 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 41 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_hardcore_coop
execute if score @s screen matches 41 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_hardcore_solo
execute if score @s screen matches 41 unless data entity @s EnderItems[{id:"minecraft:brown_concrete_powder"}] run function lobby:chest_menu/start_hardcore_menu

##Nightmare leaderboards menu
execute if score @s screen matches 42 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 42 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_nightmare_coop
execute if score @s screen matches 42 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_leaderboard_nightmare_solo
execute if score @s screen matches 42 unless data entity @s EnderItems[{id:"minecraft:black_concrete_powder"}] run function lobby:chest_menu/start_nightmare_menu

##Hard solo leaderboards screen.
execute if score @s screen matches 31 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_hard_menu
execute if score @s screen matches 31 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_hard_solo

##Super Hard solo leaderboards screen.
execute if score @s screen matches 32 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_super_hard_menu
execute if score @s screen matches 32 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_super_hard_solo

##Hardcore solo leaderboards screen.
execute if score @s screen matches 33 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_hardcore_menu
execute if score @s screen matches 33 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_hardcore_solo

##Nightmare solo leaderboards screen.
execute if score @s screen matches 34 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_nightmare_menu
execute if score @s screen matches 34 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_nightmare_solo

##Hard coop leaderboards screen.
execute if score @s screen matches 35 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_hard_menu
execute if score @s screen matches 35 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_hard_coop

##Super Hard coop leaderboards screen.
execute if score @s screen matches 36 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_super_hard_menu
execute if score @s screen matches 36 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_super_hard_coop

##Hardcore coop leaderboards screen.
execute if score @s screen matches 37 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_hardcore_menu
execute if score @s screen matches 37 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_hardcore_coop

##Nightmare coop leaderboards screen.
execute if score @s screen matches 38 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_nightmare_menu
execute if score @s screen matches 38 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboard_nightmare_coop


##Games played leaderboards screen.
execute if score @s screen matches 44 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 44 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_games_played_leaderboard

##Accuracy leaderboards screen.
execute if score @s screen matches 43 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards_2
execute if score @s screen matches 43 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_accuracy_leaderboard

##Parkour leaderboards screen.
execute if score @s screen matches 4 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 4 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_parkour_leaderboard

##Dungeon leaderboards screen.
execute if score @s screen matches 29 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 29 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_dungeon_leaderboard

##Statistics screen
execute if score @s screen matches 5 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 5 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_statistics

##Journal screen
execute if score @s screen matches 6 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/journal_tellraw_1

execute if score @s screen matches 6 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 6 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal_2
execute if score @s screen matches 6 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal

##Journal screen #2
execute if score @s screen matches 7 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal
execute if score @s screen matches 7 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal_3
execute if score @s screen matches 7 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal_2

##Journal screen #3
execute if score @s screen matches 20 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal_2
# execute if score @s screen matches 7 unless data entity @s EnderItems[{id:"minecraft:lime_dye"}] run function lobby:chest_menu/start_journal_3
execute if score @s screen matches 20 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_journal_3

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

##Castle leaderboards screens.
execute if score @s screen matches 16 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_solo_leaderboard
execute if score @s screen matches 23 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_duo_leaderboard
execute if score @s screen matches 24 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_trio_leaderboard
execute if score @s screen matches 25 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_squad_leaderboard
execute if score @s screen matches 16 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_leaderboard_menu
execute if score @s screen matches 23 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_leaderboard_menu
execute if score @s screen matches 24 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_leaderboard_menu
execute if score @s screen matches 25 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_castle_leaderboard_menu

##Second castle leaderboards screen
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_castle_squad_leaderboard
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-1066681296,-829472409,-1805167407,243523718],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDJjZDJiZmYyMWY2OTE4ZWE3ZGE0MTgzM2Q5OWEwYmRiMDE5YWNhMmE2N2U1ZGMyMGYxYTE3YTYxYjNkNjJhIn19fQ=="}]}}}}] run function lobby:chest_menu/start_castle_trio_leaderboard
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-460249325,-263041435,-1452301009,-572897996],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNjZjJjMTUyM2Y1ZTkxYzNiZGFiMDc2YjM5NWExYjM4MTEyMWNhMWMwYjQyYWU2NzgzZmI3Y2U1MThhIn19fQ=="}]}}}}] run function lobby:chest_menu/start_castle_duo_leaderboard
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_castle_solo_leaderboard
execute if score @s screen matches 21 unless data entity @s EnderItems[{id:"minecraft:warped_wart_block"}] run function lobby:chest_menu/start_castle_leaderboard_menu

##Kingdom leaderboards screens.
execute if score @s screen matches 17 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_solo_leaderboard
execute if score @s screen matches 26 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_duo_leaderboard
execute if score @s screen matches 27 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_trio_leaderboard
execute if score @s screen matches 28 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_squad_leaderboard
execute if score @s screen matches 17 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu
execute if score @s screen matches 26 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu
execute if score @s screen matches 27 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu
execute if score @s screen matches 28 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu

##Second kingdom leaderboards screen
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}}] run function lobby:chest_menu/start_kingdom_squad_leaderboard
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-1066681296,-829472409,-1805167407,243523718],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDJjZDJiZmYyMWY2OTE4ZWE3ZGE0MTgzM2Q5OWEwYmRiMDE5YWNhMmE2N2U1ZGMyMGYxYTE3YTYxYjNkNjJhIn19fQ=="}]}}}}] run function lobby:chest_menu/start_kingdom_trio_leaderboard
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-460249325,-263041435,-1452301009,-572897996],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNjZjJjMTUyM2Y1ZTkxYzNiZGFiMDc2YjM5NWExYjM4MTEyMWNhMWMwYjQyYWU2NzgzZmI3Y2U1MThhIn19fQ=="}]}}}}] run function lobby:chest_menu/start_kingdom_duo_leaderboard
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}}] run function lobby:chest_menu/start_kingdom_solo_leaderboard
execute if score @s screen matches 22 unless data entity @s EnderItems[{id:"minecraft:cracked_stone_bricks"}] run function lobby:chest_menu/start_kingdom_leaderboard_menu

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

execute if score @s screen matches 19 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics

execute if score @s screen matches 19 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_armor_trims
execute if score @s screen matches 19 store result score $calculate calculate run clear @s #minecraft:click{cosmetic:1} 0
execute if score @s screen matches 19 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_armor_trim
execute if score @s screen matches 19 unless data entity @s EnderItems[{Slot:22b,tag:{cosmetic:2}}] run function lobby:chest_menu/change_armor_trim_type
execute if score @s screen matches 19 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_armor_trims



execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:crossbow"}] run function lobby:chest_menu/trials/toggle_default
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:barrel"}] run function lobby:chest_menu/trials/toggle_shopless
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:emerald"}] run function lobby:chest_menu/trials/toggle_poverty
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:arrow"}] run function lobby:chest_menu/trials/toggle_quiver
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:raw_copper"}] run function lobby:chest_menu/trials/toggle_collector
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:gunpowder"}] run function lobby:chest_menu/trials/toggle_detonation
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:sculk_vein"}] run function lobby:chest_menu/trials/toggle_gloom
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:soul_campfire"}] run function lobby:chest_menu/trials/toggle_firetrail
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:brush"}] run function lobby:chest_menu/trials/toggle_scramble
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:chest_menu/trials/toggle_random
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:structure_void"}] run function lobby:chest_menu/trials/disable_all
execute if score @s screen matches 45 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 45 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_trials

##Sound
playsound minecraft:ui.button.click master @s[tag=!invalid_click] ~ ~ ~ 1 1


execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if entity @s[team=!test,team=!help,team=!bld,team=!srbld,team=!prg,team=!srprg,team=!manager,team=!lead,team=!pc,team=!cr,team=!art,team=!unlock] run advancement grant @s[scores={cosmetics_punch=1..,armor=1..}] only advancements:lobby-cosmetic