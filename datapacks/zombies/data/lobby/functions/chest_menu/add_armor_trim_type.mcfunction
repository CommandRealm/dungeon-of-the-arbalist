# called to add a trim
scoreboard players add @s cosmetics_trim_type 1

execute if score @s cosmetics_trim_type matches 1 if entity @s[tag=!trim_type_1] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 2 if entity @s[tag=!trim_type_2] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 3 if entity @s[tag=!trim_type_3] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 4 if entity @s[tag=!trim_type_4] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 5 if entity @s[tag=!trim_type_5] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 6 if entity @s[tag=!trim_type_6] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 7 if entity @s[tag=!trim_type_7] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 8 if entity @s[tag=!trim_type_8] run function lobby:chest_menu/add_armor_trim_type
execute if score @s cosmetics_trim_type matches 9 if entity @s[tag=!trim_type_9] run function lobby:chest_menu/add_armor_trim_type

scoreboard players set @s[scores={cosmetics_trim_type=10..}] cosmetics_trim_type 0