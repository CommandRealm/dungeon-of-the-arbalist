execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_modifiers] run scoreboard players remove $modifiers settings 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_modifiers] run function options:modifiers/add
