scoreboard players add @e[tag=bagee,type=armor_stand] bagee_arm 1
execute as @e[tag=bagee,type=armor_stand] at @s if score @s bagee_arm matches 1..30 run function credits:bagee/arm_left
execute as @e[tag=bagee,type=armor_stand] at @s if score @s bagee_arm matches 31..60 run function credits:bagee/arm_right
execute as @e[tag=bagee,type=armor_stand] at @s if score @s bagee_arm matches 61 run scoreboard players set @s bagee_arm 1