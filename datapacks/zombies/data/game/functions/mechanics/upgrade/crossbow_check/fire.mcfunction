##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 10
execute if entity @e[tag=hit,type=marker,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 19
execute if entity @e[tag=hit,type=marker,tag=air_upgrade_spot] run scoreboard players set @s possible_upgrade 24
