##Reset screen

##Screens
execute if score @s screen matches 0 run function lobby:chest_menu/start
execute if score @s screen matches 1 run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 2 run function lobby:chest_menu/start_personal_options
execute if score @s screen matches 3 run function lobby:chest_menu/start_leaderboards
execute if score @s screen matches 4 run function lobby:chest_menu/start_parkour_leaderboard
execute if score @s screen matches 5 run function lobby:chest_menu/start_statistics
execute if score @s screen matches 6 run function lobby:chest_menu/start_journal
execute if score @s screen matches 7 run function lobby:chest_menu/start_journal_2
execute if score @s screen matches 8 run function lobby:chest_menu/start_suffixes
execute if score @s screen matches 9 run function lobby:chest_menu/start_suffixes_2
execute if score @s screen matches 10 run function lobby:chest_menu/start_suffixes_3
execute if score @s screen matches 11 run function lobby:chest_menu/start_punch
execute if score @s screen matches 12 run function lobby:chest_menu/start_armor
execute if score @s screen matches 13 run function lobby:chest_menu/start_credits
execute if score @s screen matches 14 run function lobby:chest_menu/start_team_credits
execute if score @s screen matches 15 run function lobby:chest_menu/start_website_credits
execute if score @s screen matches 16 run function lobby:chest_menu/start_castle_leaderboard
execute if score @s screen matches 17 run function lobby:chest_menu/start_kingdom_leaderboard
execute if score @s screen matches 18 run function lobby:chest_menu/start_unlocks



execute if score @s screen matches 99 run function lobby:chest_menu/start_titles