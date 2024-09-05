##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 32
execute if entity @e[type=minecraft:marker,tag=hit,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 45

return 1