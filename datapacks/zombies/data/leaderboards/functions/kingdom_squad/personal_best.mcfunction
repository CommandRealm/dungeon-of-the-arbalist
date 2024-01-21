##Updating the score.
scoreboard players operation @s kingdom_score4 = @s run

##Seeing if we broke any records.

tag @s add temporary_tag_2

##If we have a record already.
execute as @e[type=armor_stand,tag=kingdom_leaderboard4] at @s if score @s lobby_id = @p[tag=temporary_tag_2] lobby_id run tag @s add temporary_tag_2

##Diffulty
scoreboard players operation @s kingdom_diff4 = $difficulty settings

tag @s remove temporary_tag_2

execute if score @s run <= @e[type=armor_stand,tag=kingdom_leaderboard4,scores={leaderboard_pos=1},limit=1] kingdom_score4 run function leaderboards:kingdom_squad/new_top_score
execute if score @s[tag=!temporary_tag] run <= @e[type=armor_stand,tag=kingdom_leaderboard4,scores={leaderboard_pos=2},limit=1] kingdom_score4 run function leaderboards:kingdom_squad/new_middle_score
execute if score @s[tag=!temporary_tag] run <= @e[type=armor_stand,tag=kingdom_leaderboard4,scores={leaderboard_pos=3},limit=1] kingdom_score4 run function leaderboards:kingdom_squad/new_bottom_score

tag @s remove temporary_tag

tag @e[type=armor_stand,tag=temporary_tag_2] remove temporary_tag_2
##Msg
tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"!","color":"yellow"},{"text":"]","color":"gold","bold":true},{"text":" New personal best!","color":"green"}]


