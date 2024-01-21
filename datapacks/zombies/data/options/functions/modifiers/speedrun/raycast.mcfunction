execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_speedrun] run function options:modifiers/speedrun/hit_arrow
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_speedrun] if entity @s[distance=..4.5] positioned ^ ^ ^0.09 run function options:modifiers/speedrun/raycast
