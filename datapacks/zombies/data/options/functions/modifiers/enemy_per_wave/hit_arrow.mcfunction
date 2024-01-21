execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_enemy_per_wave] run scoreboard players remove $enemy_per_wave modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_enemy_per_wave] run function options:modifiers/enemy_per_wave/add
