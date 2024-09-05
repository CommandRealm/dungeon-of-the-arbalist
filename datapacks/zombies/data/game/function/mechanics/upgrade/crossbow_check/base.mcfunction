##called to see if we can upgrade it on this spot.

execute if entity @e[type=minecraft:marker,tag=hit,tag=fire_upgrade_spot] run scoreboard players set @s possible_upgrade 1
execute if entity @e[type=minecraft:marker,tag=hit,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 2
execute if entity @e[type=minecraft:marker,tag=hit,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 3
execute if entity @e[type=minecraft:marker,tag=hit,tag=air_upgrade_spot] run scoreboard players set @s possible_upgrade 4
execute if entity @e[type=minecraft:marker,tag=hit,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 5
execute if entity @e[type=minecraft:marker,tag=hit,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 6
execute if entity @e[type=minecraft:marker,tag=hit,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 7
execute if entity @e[type=minecraft:marker,tag=hit,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 8
execute if entity @e[type=minecraft:marker,tag=hit,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 9
return 1