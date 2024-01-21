##Called to calculate the kingdom standings.

##
scoreboard players set @e[type=armor_stand,tag=hardcore_leaderboard2] leaderboard_pos -100

##Finding highest remaining score.
scoreboard players set $calculate calculate -1000000000
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate = @s leaderboard_hardcore_wave2
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation $calculate calculate > @s calculate
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate -= $calculate calculate
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,sort=random,limit=1,scores={calculate=0},tag=!temporary_tag_3] at @s run scoreboard players set @s leaderboard_pos 1
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,sort=random,limit=1,scores={leaderboard_pos=1},tag=!temporary_tag_3] at @s run tag @s add temporary_tag_3

scoreboard players set $calculate calculate -1000000000
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate = @s leaderboard_hardcore_wave2
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation $calculate calculate > @s calculate
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate -= $calculate calculate
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,sort=random,limit=1,scores={calculate=0},tag=!temporary_tag_3] at @s run scoreboard players set @s leaderboard_pos 2
execute as @e[type=armor_stand,tag=hardcore_leaderboard2,sort=random,limit=1,scores={leaderboard_pos=2},tag=!temporary_tag_3] at @s run tag @s add temporary_tag_3


execute as @e[type=armor_stand,tag=hardcore_leaderboard2,sort=random,limit=1,tag=!temporary_tag_3] at @s run scoreboard players set @s leaderboard_pos 3












tag @e[type=armor_stand,tag=hardcore_leaderboard2] remove temporary_tag_3