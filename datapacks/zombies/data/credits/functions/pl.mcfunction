execute as @e[tag=pl] at @s store result score @s pl run data get entity @s Pose.RightArm[2]
execute if score $direction pld matches 1 run function credits:pld1
execute if score $direction pld matches 2 run function credits:pld2
execute as @e[tag=pl] store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s pl
scoreboard players remove @e[tag=pl] pl 70
execute as @e[tag=pl] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s pl