execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_speedrun] run scoreboard players remove $speedrun modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_speedrun] run function options:modifiers/speedrun/add
