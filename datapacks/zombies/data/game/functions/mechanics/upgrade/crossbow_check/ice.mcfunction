##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 14
execute if entity @e[tag=hit,type=area_effect_cloud,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 23
execute if entity @e[tag=hit,type=area_effect_cloud,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 27
