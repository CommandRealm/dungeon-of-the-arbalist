scoreboard players add @e[type=minecraft:armor_stand,tag=pug] pug_arms 1
execute as @e[type=minecraft:armor_stand,tag=pug] at @s if score @s pug_arms matches 1..30 run function credits:pug/arms_up
execute as @e[type=minecraft:armor_stand,tag=pug] at @s if score @s pug_arms matches 31..60 run function credits:pug/arms_down
execute as @e[type=minecraft:armor_stand,tag=pug] at @s if score @s pug_arms matches 61 run scoreboard players set @s pug_arms 1
return 1