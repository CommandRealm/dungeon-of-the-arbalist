execute store result score $arm bagee_arm run scoreboard players get @s bagee_arm
scoreboard players operation $arm bagee_arm *= -1 bagee_arm
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get $arm bagee_arm
execute store result score $armPosition bagee_arm run data get entity @s Pose.RightArm[2] 1