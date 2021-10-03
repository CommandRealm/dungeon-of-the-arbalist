scoreboard players add @e[tag=boba,type=armor_stand] boba_arms 3
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 4 run data modify entity @s Motion[1] set value 0.35d
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 4 run data modify entity @s Pose.RightArm set value [180f,0f,280f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 4 run data modify entity @s Pose.LeftArm set value [180f,0f,80f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 10 run data modify entity @s Pose.RightArm set value [180f,0f,320f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 10 run data modify entity @s Pose.LeftArm set value [180f,0f,40f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 37 run data modify entity @s Pose.RightArm set value [180f,0f,280f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 37 run data modify entity @s Pose.LeftArm set value [180f,0f,80f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 40 run data modify entity @s Pose.RightArm set value [0f,0f,5f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 40 run data modify entity @s Pose.LeftArm set value [0f,0f,-5f]
execute as @e[tag=boba,type=armor_stand] at @s if score @s boba_arms matches 100.. run scoreboard players set @s boba_arms 1