##called to see if we can upgrade it on this spot.

execute if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] run scoreboard players set @s possible_upgrade 18
execute if entity @e[tag=hit,type=marker,tag=lightning_upgrade_spot] run scoreboard players set @s possible_upgrade 22
execute if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] run scoreboard players set @s possible_upgrade 25