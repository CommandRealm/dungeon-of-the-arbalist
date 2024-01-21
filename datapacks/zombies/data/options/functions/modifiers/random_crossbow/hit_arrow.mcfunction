execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_random_crossbow] run scoreboard players remove $random_crossbow modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_random_crossbow] run function options:modifiers/random_crossbow/add
