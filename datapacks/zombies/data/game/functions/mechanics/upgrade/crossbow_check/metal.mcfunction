##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=area_effect_cloud,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 18
execute if entity @e[tag=hit,type=area_effect_cloud,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 22
execute if entity @e[tag=hit,type=area_effect_cloud,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 25