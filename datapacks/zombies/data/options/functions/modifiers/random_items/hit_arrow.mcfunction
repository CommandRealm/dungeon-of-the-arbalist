execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_random_items] run scoreboard players remove $random_items modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_random_items] run function options:modifiers/random_items/add
