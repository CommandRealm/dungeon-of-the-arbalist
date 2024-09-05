##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 36
execute if entity @e[type=minecraft:marker,tag=hit,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 39

return 1