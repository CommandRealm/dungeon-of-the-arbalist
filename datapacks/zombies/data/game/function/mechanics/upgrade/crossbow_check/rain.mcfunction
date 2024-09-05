##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 29
execute if entity @e[type=minecraft:marker,tag=hit,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 38

return 1