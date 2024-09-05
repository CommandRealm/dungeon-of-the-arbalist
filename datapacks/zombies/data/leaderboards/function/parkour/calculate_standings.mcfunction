##Called to calculate the parkour standings.

##
scoreboard players set @e[type=minecraft:armor_stand,tag=parkour_leaderboard] leaderboard_pos -100

##Finding highest remaining score.
scoreboard players set $calculate calculate 1000000000
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate = @s parkour_score
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation $calculate calculate < @s calculate
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate -= $calculate calculate
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3,scores={calculate=0},sort=random,limit=1] at @s run scoreboard players set @s leaderboard_pos 1
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3,scores={leaderboard_pos=1},sort=random,limit=1] at @s run tag @s add temporary_tag_3

scoreboard players set $calculate calculate 1000000000
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate = @s parkour_score
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation $calculate calculate < @s calculate
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3] at @s run scoreboard players operation @s calculate -= $calculate calculate
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3,scores={calculate=0},sort=random,limit=1] at @s run scoreboard players set @s leaderboard_pos 2
execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3,scores={leaderboard_pos=2},sort=random,limit=1] at @s run tag @s add temporary_tag_3


execute as @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=!temporary_tag_3,sort=random,limit=1] at @s run scoreboard players set @s leaderboard_pos 3












tag @e[type=minecraft:armor_stand,tag=parkour_leaderboard] remove temporary_tag_3
return 1