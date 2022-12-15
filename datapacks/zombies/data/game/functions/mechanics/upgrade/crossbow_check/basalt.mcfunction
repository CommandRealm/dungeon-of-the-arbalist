##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 63
execute if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 60
