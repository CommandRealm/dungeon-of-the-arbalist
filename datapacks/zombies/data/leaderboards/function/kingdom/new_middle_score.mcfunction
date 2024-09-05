##Called to give us the new middle score.

##Tag so we know we've already gotten a new highscore.
tag @s add temporary_tag

execute unless entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2] run tag @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,scores={leaderboard_pos=2}] add temporary_tag_2

##Setting second to be our score.
loot replace entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] armor.head loot game:head
function help:391acf8d1232c774f803e47528aa7665b07d1a47c66fdc9d1cd31721e9f822d1
data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] CustomName set from block 0 10 0 front_text.messages[1]
execute if score $difficulty settings matches 0 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"dark_green","italic":false,"text":"Super Easy"}'
execute if score $difficulty settings matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"green","italic":false,"text":"Easy"}'
execute if score $difficulty settings matches 2 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"yellow","italic":false,"text":"Medium"}'
execute if score $difficulty settings matches 3 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"red","italic":false,"text":"Hard"}'
execute if score $difficulty settings matches 4 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"dark_red","italic":false,"text":"Super Hard"}'
execute if score $difficulty settings matches 5 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"#600011","italic":false,"text":"Hardcore"}'
execute if score $difficulty settings matches 6 run data modify entity @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] ArmorItems[3].components."minecraft:lore" append value '{"bold":true,"color":"#423031","italic":false,"text":"Nightmare"}'

scoreboard players operation @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] kingdom_score = @s kingdom_time
scoreboard players operation @e[type=minecraft:armor_stand,tag=kingdom_leaderboard,tag=temporary_tag_2,limit=1] lobby_id = @s lobby_id

##recalculating the leaderboard positions
function leaderboards:kingdom/calculate_standings
return 1