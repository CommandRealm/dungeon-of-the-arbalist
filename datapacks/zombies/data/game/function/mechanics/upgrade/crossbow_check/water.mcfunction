##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 11
execute if entity @e[type=minecraft:marker,tag=hit,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 19
execute if entity @e[type=minecraft:marker,tag=hit,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 20

return 1