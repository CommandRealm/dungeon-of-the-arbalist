##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 30
execute if entity @e[type=minecraft:marker,tag=hit,tag=air_upgrade_spot] run scoreboard players set @s possible_upgrade 41

return 1