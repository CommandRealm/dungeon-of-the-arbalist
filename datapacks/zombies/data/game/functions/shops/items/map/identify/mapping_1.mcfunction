##called to identify mapping

execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~37 ~ ~ as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-37 ~ ~ as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
##execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~37 ~ ~37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
##execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-37 ~ ~-37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
##execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-37 ~ ~37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
##execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~37 ~ ~-37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~ ~ ~37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~ ~ ~-37 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1,distance=..1] at @s run function game:shops/items/map/identify/identify

##corners are disabled.