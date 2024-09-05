##called to find spawnpoints
tag @e[type=minecraft:area_effect_cloud,tag=generation_marker] remove possible_spawn
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker] at @s if score @s grid_x = $down generation run tag @s add possible_spawn
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker] at @s if score @s grid_x = $up generation run tag @s add possible_spawn
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker] at @s if score @s grid_z = $left generation run tag @s add possible_spawn
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker] at @s if score @s grid_z = $right generation run tag @s add possible_spawn
return 1