##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 51
execute if entity @e[tag=hit,type=area_effect_cloud,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 62
