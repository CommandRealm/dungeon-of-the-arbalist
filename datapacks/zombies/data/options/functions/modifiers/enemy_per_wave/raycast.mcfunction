execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_enemy_per_wave] run function options:modifiers/enemy_per_wave/hit_arrow
execute unless entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_enemy_per_wave] if entity @s[distance=..4.5] positioned ^ ^ ^0.09 run function options:modifiers/enemy_per_wave/raycast
