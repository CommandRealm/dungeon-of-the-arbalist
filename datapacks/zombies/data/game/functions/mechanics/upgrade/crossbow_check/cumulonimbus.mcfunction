##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 48
execute if entity @e[tag=hit,type=area_effect_cloud,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 55
