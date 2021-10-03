##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 11
execute if entity @e[tag=hit,type=area_effect_cloud,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 19
execute if entity @e[tag=hit,type=area_effect_cloud,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 20
