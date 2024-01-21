##Called to give us the new bottom score.

##Tag so we know we've already gotten a new highscore.
tag @s add temporary_tag
tag @a[tag=playing] add temporary_tag
execute unless entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2] run tag @e[type=armor_stand,tag=castle_leaderboard3,scores={leaderboard_pos=3}] add temporary_tag_2

##Setting third to be our score.
loot replace entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] armor.head loot game:head
data modify block 0 10 0 front_text.messages[1] set value '[{"text":"","italic":false},{"selector":"@a[tag=temporary_tag]"},{"text":"\'s ","color":"yellow"},{"text":"time: ","color":"gray"},{"nbt":"front_text.messages[0]","block":"0 10 0","interpret":true}]'
data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] CustomName set from block 0 10 0 front_text.messages[1]
execute if score $difficulty settings matches 0 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Super Easy","color":"dark_green","bold":true,"italic":false}]'
execute if score $difficulty settings matches 1 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Easy","color":"green","bold":true,"italic":false}]'
execute if score $difficulty settings matches 2 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Medium","color":"yellow","bold":true,"italic":false}]'
execute if score $difficulty settings matches 3 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Hard","color":"red","bold":true,"italic":false}]'
execute if score $difficulty settings matches 4 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Super Hard","color":"dark_red","bold":true,"italic":false}]'
execute if score $difficulty settings matches 5 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Hardcore","color":"#600011","bold":true,"italic":false}]'
execute if score $difficulty settings matches 6 run data modify entity @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] ArmorItems[3].tag.display.Lore append value '[{"text":"Nightmare","color":"#423031","bold":true,"italic":false}]'

scoreboard players operation @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] castle_score3 = @s castle_score3
scoreboard players operation @e[type=armor_stand,tag=castle_leaderboard3,tag=temporary_tag_2,limit=1] lobby_id = @s lobby_id


##recalculating the leaderboard positions
function leaderboards:castle_trio/calculate_standings