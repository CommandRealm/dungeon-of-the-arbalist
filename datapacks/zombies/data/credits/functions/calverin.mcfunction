
scoreboard players add @e[tag=calverin,type=armor_stand] calverin 1

execute if entity @e[tag=calverin,type=armor_stand,scores={calverin=10..}] run function credits:calverin_change_pose