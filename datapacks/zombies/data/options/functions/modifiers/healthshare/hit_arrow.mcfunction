execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_healthshare] run scoreboard players remove $healthshare modifiers 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_healthshare] run function options:modifiers/healthshare/add
