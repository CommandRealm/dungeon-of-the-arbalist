execute as @e[tag=hippeh] at @s store result score @s HArm2 run data get entity @s Pose.LeftArm[1]
scoreboard players add @e[tag=hippeh] HArm2 5
execute as @e[tag=hippeh] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s HArm2