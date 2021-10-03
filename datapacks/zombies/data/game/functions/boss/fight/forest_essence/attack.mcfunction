##Called to attack.
##adding one so the first attack isn't in use during the second phase
execute if score $phase boss matches 2 run scoreboard players add $attack_id boss 1

execute if score $attack_id boss matches 1 unless entity @e[tag=forest_essence_controlled] unless entity @e[type=marker,tag=boss_room_spawnpoint,scores={spawn_delay=0..}] run function game:boss/fight/forest_essence/control/start

execute if score $attack_id boss matches 2 run function game:boss/fight/forest_essence/teleport

execute if score $attack_id boss matches 3 run function game:boss/fight/forest_essence/block/throw

execute if score $attack_id boss matches 4 run function game:boss/fight/forest_essence/block/circle

execute if score $attack_id boss matches 1 unless entity @e[tag=forest_essence_controlled] if entity @e[type=marker,tag=boss_room_spawnpoint,scores={spawn_delay=0..}] run schedule function game:boss/fight/forest_essence/attack 1t