##Seeing if we're in the same room we were in the tick before.

execute unless score @s grid_x = @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1] grid_x run tag @s remove holding_map
execute unless score @s grid_z = @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1] grid_z run tag @s remove holding_map


scoreboard players operation @s grid_x = @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1] grid_x
scoreboard players operation @s grid_z = @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1] grid_z