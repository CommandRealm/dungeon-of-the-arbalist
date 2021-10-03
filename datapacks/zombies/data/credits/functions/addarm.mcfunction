execute as @e[tag=hippeh] at @s store result score @s HArm1 run data get entity @s Pose.RightArm[1]
scoreboard players add @e[tag=hippeh] HArm1 5
execute as @e[tag=hippeh] store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s HArm1