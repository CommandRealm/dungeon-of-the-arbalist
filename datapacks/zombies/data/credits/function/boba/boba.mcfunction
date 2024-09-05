scoreboard players add @e[type=minecraft:armor_stand,tag=boba] boba_arms 3
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 4 run data modify entity @s Motion[1] set value 0.35d
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 4 run data modify entity @s Pose.RightArm set value [180.0f,0.0f,280.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 4 run data modify entity @s Pose.LeftArm set value [180.0f,0.0f,80.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 10 run data modify entity @s Pose.RightArm set value [180.0f,0.0f,320.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 10 run data modify entity @s Pose.LeftArm set value [180.0f,0.0f,40.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 37 run data modify entity @s Pose.RightArm set value [180.0f,0.0f,280.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 37 run data modify entity @s Pose.LeftArm set value [180.0f,0.0f,80.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 40 run data modify entity @s Pose.RightArm set value [0.0f,0.0f,5.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 40 run data modify entity @s Pose.LeftArm set value [0.0f,0.0f,-5.0f]
execute as @e[type=minecraft:armor_stand,tag=boba] at @s if score @s boba_arms matches 100.. run scoreboard players set @s boba_arms 1
return 1