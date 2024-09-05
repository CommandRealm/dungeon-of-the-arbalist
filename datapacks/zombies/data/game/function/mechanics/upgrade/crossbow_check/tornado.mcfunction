##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=air_upgrade_spot] run scoreboard players set @s possible_upgrade 31
execute if entity @e[type=minecraft:marker,tag=hit,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 43

return 1