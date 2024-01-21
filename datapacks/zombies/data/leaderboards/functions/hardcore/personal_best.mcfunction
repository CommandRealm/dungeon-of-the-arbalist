##Updating the score.
scoreboard players operation @s leaderboard_hardcore_wave = @s wave_reached

##Seeing if we broke any records.

tag @s add temporary_tag_2

##If we have a record already.
execute as @e[type=armor_stand,tag=hardcore_leaderboard,scores={leaderboard_hardcore_wave=1000000000..}] at @s run scoreboard players operation @s leaderboard_hardcore_wave *= $-1 number

execute as @e[type=armor_stand,tag=hardcore_leaderboard] at @s if score @s lobby_id = @p[tag=temporary_tag_2] lobby_id run tag @s add temporary_tag_2

tag @s remove temporary_tag_2

execute if score @s wave_reached >= @e[type=armor_stand,tag=hardcore_leaderboard,scores={leaderboard_pos=1},limit=1] leaderboard_hardcore_wave run function leaderboards:hardcore/new_top_score
execute if score @s[tag=!temporary_tag] run >= @e[type=armor_stand,tag=hardcore_leaderboard,scores={leaderboard_pos=2},limit=1] leaderboard_hardcore_wave run function leaderboards:hardcore/new_middle_score
execute if score @s[tag=!temporary_tag] run >= @e[type=armor_stand,tag=hardcore_leaderboard,scores={leaderboard_pos=3},limit=1] leaderboard_hardcore_wave run function leaderboards:hardcore/new_bottom_score
execute as @e[type=armor_stand,tag=hardcore_leaderboard,scores={leaderboard_hardcore_wave=..-1000000000}] at @s run scoreboard players operation @s leaderboard_hardcore_wave *= $-1 number

tag @s remove temporary_tag

tag @e[type=armor_stand,tag=temporary_tag_2] remove temporary_tag_2
##Msg
# tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"!","color":"yellow"},{"text":"]","color":"gold","bold":true},{"text":" New personal best!","color":"green"}]


