execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_difficulty] run scoreboard players remove $difficulty settings 2
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_difficulty] run function options:difficulty/add_difficulty
