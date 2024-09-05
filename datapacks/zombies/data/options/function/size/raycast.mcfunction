execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_size] run function options:size/hit_arrow

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_size] if entity @s[distance=..4.5] positioned ^ ^ ^0.09 run function options:size/raycast

return 1