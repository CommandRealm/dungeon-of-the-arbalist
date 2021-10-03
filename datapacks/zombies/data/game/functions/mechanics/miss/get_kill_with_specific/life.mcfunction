##Called when we shoot the life crossbow

execute if score @s life_kills matches 3.. run effect give @s minecraft:regeneration 3 0 true
execute if score @s life_kills matches 3.. run scoreboard players reset @s life_kills