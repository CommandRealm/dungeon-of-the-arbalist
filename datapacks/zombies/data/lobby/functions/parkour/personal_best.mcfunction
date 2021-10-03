##Called when we receive a new personal best.


##Updating the score.
scoreboard players operation @s parkour_score = @s parkour_time

##Seeing if we broke any records.

tag @s add temporary_tag_2

##If we have a record already.
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s if score @s lobby_id = @p[tag=temporary_tag_2] lobby_id run tag @s add temporary_tag_2

tag @s remove temporary_tag_2

execute if score @s parkour_time <= @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=1},limit=1] parkour_score run function leaderboards:parkour/new_top_score
execute if score @s[tag=!temporary_tag] parkour_time <= @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=2},limit=1] parkour_score run function leaderboards:parkour/new_middle_score
execute if score @s[tag=!temporary_tag] parkour_time <= @e[type=armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3},limit=1] parkour_score run function leaderboards:parkour/new_bottom_score

tag @s remove temporary_tag

tag @e[type=armor_stand,tag=temporary_tag_2] remove temporary_tag_2
##Msg
tellraw @s ["",{"text":"[","color":"gold","bold":true},{"text":"!","color":"yellow"},{"text":"]","color":"gold","bold":true},{"text":" New personal best!","color":"green"}]



##Sound
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.85


