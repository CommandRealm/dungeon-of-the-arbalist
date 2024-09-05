
scoreboard players add @e[type=minecraft:armor_stand,tag=calverin] calverin 1

execute if entity @e[type=minecraft:armor_stand,tag=calverin,scores={calverin=10..}] run function credits:calverin_change_pose
return 1