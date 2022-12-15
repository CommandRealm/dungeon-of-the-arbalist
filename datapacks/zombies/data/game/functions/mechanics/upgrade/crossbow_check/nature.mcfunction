##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] run scoreboard players set @s possible_upgrade 16
execute if entity @e[tag=hit,type=marker,tag=water_upgrade_spot] run scoreboard players set @s possible_upgrade 20
execute if entity @e[tag=hit,type=marker,tag=ice_upgrade_spot] run scoreboard players set @s possible_upgrade 23
