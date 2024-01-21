##Updating the score.

scoreboard players set @s[scores={default_dota_wins=1000000000..}] default_dota_wins 0
scoreboard players add @s default_dota_wins 1
##Seeing if we broke any records.

tag @s add temporary_tag_2

##If we have a record already.
execute as @e[type=armor_stand,tag=dungeon_leaderboard,scores={default_dota_wins=1000000000..}] at @s run scoreboard players operation @s default_dota_wins *= $-1 number

execute as @e[type=armor_stand,tag=dungeon_leaderboard] at @s if score @s lobby_id = @p[tag=temporary_tag_2] lobby_id run tag @s add temporary_tag_2

tag @s remove temporary_tag_2

execute if score @s default_dota_wins >= @e[type=armor_stand,tag=dungeon_leaderboard,scores={leaderboard_pos=1},limit=1] default_dota_wins run function leaderboards:dungeon/new_top_score
execute if score @s[tag=!temporary_tag] default_dota_wins >= @e[type=armor_stand,tag=dungeon_leaderboard,scores={leaderboard_pos=2},limit=1] default_dota_wins run function leaderboards:dungeon/new_middle_score
execute if score @s[tag=!temporary_tag] default_dota_wins >= @e[type=armor_stand,tag=dungeon_leaderboard,scores={leaderboard_pos=3},limit=1] default_dota_wins run function leaderboards:dungeon/new_bottom_score


execute as @e[type=armor_stand,tag=dungeon_leaderboard,scores={default_dota_wins=..-1000000000}] at @s run scoreboard players operation @s default_dota_wins *= $-1 number

tag @s remove temporary_tag

tag @e[type=armor_stand,tag=temporary_tag_2] remove temporary_tag_2
##Msg
# tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"!","color":"yellow"},{"text":"]","color":"gold","bold":true},{"text":" New personal best!","color":"green"}]


