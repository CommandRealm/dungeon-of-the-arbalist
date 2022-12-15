##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] run scoreboard players set @s possible_upgrade 12
execute if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 21
execute if entity @e[tag=hit,type=marker,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 27