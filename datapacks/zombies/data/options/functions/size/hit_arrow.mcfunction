execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_size] run scoreboard players remove $grid_size settings 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_size] run function options:size/add_size
