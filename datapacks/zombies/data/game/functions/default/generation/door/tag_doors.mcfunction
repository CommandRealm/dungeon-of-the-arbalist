##Called to tag doors
execute as @e[type=area_effect_cloud,tag=doorway] at @s if block ~ ~ ~ spruce_wood run tag @s add dark_door
execute as @e[type=area_effect_cloud,tag=doorway,x=2000,y=66,z=0,distance=..22] at @s run tag @s add boss_door
execute as @e[type=area_effect_cloud,tag=doorway] at @s if block ~ ~ ~ polished_andesite run kill @s
tag @e[type=area_effect_cloud,tag=doorway,tag=!dark_door,tag=!boss_door] add default_door

##Killing other markers near the boss door
execute at @e[type=area_effect_cloud,tag=boss_door] run kill @e[type=area_effect_cloud,tag=!boss_door,tag=doorway,distance=..5]

##Generating door prices.
execute as @e[type=area_effect_cloud,tag=default_door] at @s run function game:default/generation/door/generate_door_price
execute as @e[type=area_effect_cloud,tag=default_door] at @s run function game:default/generation/door/create_price_marker