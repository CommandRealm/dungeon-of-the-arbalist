execute positioned ~ ~-1 ~ if entity @e[type=minecraft:armor_stand,distance=..2,tag=show_details] run function credits:show_text
execute if entity @e[type=minecraft:armor_stand,distance=..2,tag=show_details] run function credits:show_text
execute if entity @s[distance=..5] unless entity @e[type=minecraft:armor_stand,distance=..2,tag=show_details] positioned ^ ^ ^0.5 run function credits:raycast
return 1