##Updating the score.
scoreboard players set @s[scores={gamesplay_score=1000000000..}] gamesplay_score 0
scoreboard players add @s gamesplay_score 1

##Seeing if we broke any records.

tag @s add temporary_tag_2

##If we have a record already.
execute as @e[type=armor_stand,tag=gamesplay_leaderboard,scores={gamesplay_score=1000000000..}] at @s run scoreboard players operation @s gamesplay_score *= $-1 number
execute as @e[type=armor_stand,tag=gamesplay_leaderboard] at @s if score @s lobby_id = @p[tag=temporary_tag_2] lobby_id run tag @s add temporary_tag_2

tag @s remove temporary_tag_2

execute if score @s gamesplay_score >= @e[type=armor_stand,tag=gamesplay_leaderboard,scores={leaderboard_pos=1},limit=1] gamesplay_score run function leaderboards:gamesplay/new_top_score
execute if score @s[tag=!temporary_tag] gamesplay_score >= @e[type=armor_stand,tag=gamesplay_leaderboard,scores={leaderboard_pos=2},limit=1] gamesplay_score run function leaderboards:gamesplay/new_middle_score
execute if score @s[tag=!temporary_tag] gamesplay_score >= @e[type=armor_stand,tag=gamesplay_leaderboard,scores={leaderboard_pos=3},limit=1] gamesplay_score run function leaderboards:gamesplay/new_bottom_score
execute as @e[type=armor_stand,tag=gamesplay_leaderboard,scores={gamesplay_score=..-100000000}] at @s run scoreboard players operation @s gamesplay_score *= $-1 number


tag @s remove temporary_tag

tag @e[type=armor_stand,tag=temporary_tag_2] remove temporary_tag_2
##Msg
# tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"!","color":"yellow"},{"text":"]","color":"gold","bold":true},{"text":" New personal best!","color":"green"}]


