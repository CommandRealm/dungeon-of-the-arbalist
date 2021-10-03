##Called when we shoot the life crossbow

execute if score @s life_kills matches 5.. unless score $difficulty settings matches 5.. run effect give @s minecraft:regeneration 3 0 true
execute if score @s life_kills matches 5.. if score $difficulty settings matches 5.. run tellraw @s [{"text":"☠ ","color":"red"},{"text":"You can't heal on this difficulty.","color":"dark_gray"}]
execute if score @s life_kills matches 5.. unless score $difficulty settings matches 5.. run playsound minecraft:entity.skeleton.death master @s ~ ~ ~ 0.5 1.25
execute if score @s life_kills matches 5.. run scoreboard players reset @s life_kills