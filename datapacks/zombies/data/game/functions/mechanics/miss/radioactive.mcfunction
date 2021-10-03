##radioactive function
scoreboard players add @s radioactive_miss 1
execute if score @s radioactive_miss matches 3.. run effect give @s minecraft:wither 3 0 true
execute if score @s radioactive_miss matches 3.. run scoreboard players reset @s radioactive_miss