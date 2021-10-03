scoreboard players add @e[tag=pug,type=armor_stand] pug_arms 1
execute as @e[tag=pug,type=armor_stand] at @s if score @s pug_arms matches 1..30 run function credits:pug/arms_up
execute as @e[tag=pug,type=armor_stand] at @s if score @s pug_arms matches 31..60 run function credits:pug/arms_down
execute as @e[tag=pug,type=armor_stand] at @s if score @s pug_arms matches 61 run scoreboard players set @s pug_arms 1