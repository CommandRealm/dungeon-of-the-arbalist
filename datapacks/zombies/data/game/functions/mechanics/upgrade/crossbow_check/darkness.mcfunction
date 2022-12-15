##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 17
execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 21
execute if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 25
