##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 46
execute if entity @e[type=minecraft:marker,tag=hit,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 58

return 1