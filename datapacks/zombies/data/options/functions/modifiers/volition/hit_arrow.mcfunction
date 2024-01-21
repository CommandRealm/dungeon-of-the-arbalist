execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_volition] run scoreboard players remove $volition modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_volition] run function options:modifiers/volition/add
