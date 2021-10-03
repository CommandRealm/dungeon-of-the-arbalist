execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_mode] run scoreboard players remove $mode settings 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_mode] run function options:mode/add_mode
