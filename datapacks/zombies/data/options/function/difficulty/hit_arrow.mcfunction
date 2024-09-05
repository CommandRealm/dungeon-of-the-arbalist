execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=remove,tag=check_difficulty] run scoreboard players remove $difficulty settings 2
execute if entity @e[type=minecraft:area_effect_cloud,distance=..0.05,tag=check_sign,tag=check_difficulty] run function options:difficulty/add_difficulty

return 1