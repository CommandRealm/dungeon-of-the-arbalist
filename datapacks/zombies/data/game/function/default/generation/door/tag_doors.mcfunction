##Called to tag doors
execute as @e[type=minecraft:marker,tag=doorway] at @s if block ~ ~ ~ minecraft:spruce_wood run tag @s add dark_door
execute as @e[type=minecraft:marker,x=2000,y=66,z=0,distance=..22,tag=doorway] at @s run tag @s add boss_door
execute as @e[type=minecraft:marker,tag=doorway,tag=!edge_doorway] at @s if block ~ ~ ~ minecraft:polished_andesite run kill @s
tag @e[type=minecraft:marker,tag=doorway,tag=!dark_door,tag=!boss_door,tag=!closed_edge_door] add default_door

##Killing other markers near the boss door
execute at @e[type=minecraft:marker,tag=boss_door] run kill @e[type=minecraft:area_effect_cloud,distance=..5,tag=doorway,tag=!boss_door]

##Generating door prices.
execute as @e[type=minecraft:marker,tag=default_door] at @s run function game:default/generation/door/generate_door_price
execute as @e[type=minecraft:marker,tag=default_door] at @s run function game:default/generation/door/create_price_marker


return 1