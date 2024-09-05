##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 51
execute if entity @e[type=minecraft:marker,tag=hit,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 62

return 1