##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 63
execute if entity @e[tag=hit,type=area_effect_cloud,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 60
