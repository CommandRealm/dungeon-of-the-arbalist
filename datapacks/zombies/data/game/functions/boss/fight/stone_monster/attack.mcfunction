##Called to attack.
##adding one so the first attack isn't in use during the second phase
execute if score $phase boss matches 2 run scoreboard players add $attack_id boss 1

##If we're in phase 2, and we're doing attack 4 but there are no blocks, summon blocks.
execute if score $phase boss matches 2 if score $attack_id boss matches 4 unless entity @e[type=zombie,tag=boss_block_base] run scoreboard players remove $attack_id boss 1

##If we're in phase 2, and we're doing attack 4 but there are no blocks, summon blocks.
execute if score $phase boss matches 2 if score $attack_id boss matches 3 if entity @e[type=zombie,tag=boss_block_base] run scoreboard players add $attack_id boss 1


##If we're in phase 2, and we're doing attack 4 but there are no blocks, summon blocks.
execute if score $phase boss matches 2 if score $attack_id boss matches 2 if entity @e[type=zombie,tag=boss_block_base] run scoreboard players set $attack_id boss 4

execute if score $attack_id boss matches 1 run function game:boss/fight/stone_monster/summon/start
execute if score $attack_id boss matches 2 run function game:boss/fight/stone_monster/burrow/start
execute if score $attack_id boss matches 3 run function game:boss/fight/stone_monster/blocks/summon
execute if score $attack_id boss matches 4 run function game:boss/fight/stone_monster/laser/start
