##Called to do our attack.
scoreboard players set $active_attack boss 1


##Determining the attack.
execute if score $phase boss matches 1 run scoreboard players operation $attack_options boss = $phase_1_attacks boss
execute if score $phase boss matches 2 run scoreboard players operation $attack_options boss = $phase_2_attacks boss

execute if score $attack_options boss matches 1 store result score $attack_id boss run loot insert 0 1 0 loot random:boss_1
execute if score $attack_options boss matches 2 store result score $attack_id boss run loot insert 0 1 0 loot random:boss_2
execute if score $attack_options boss matches 3 store result score $attack_id boss run loot insert 0 1 0 loot random:boss_3
execute if score $attack_options boss matches 4 store result score $attack_id boss run loot insert 0 1 0 loot random:boss_4
execute if score $attack_options boss matches 5 store result score $attack_id boss run loot insert 0 1 0 loot random:boss_5
function random:reset_chest


##Specific bosses.
execute if score $boss boss matches 0 run function game:boss/fight/ravager/attack
execute if score $boss boss matches 1 run function game:boss/fight/guardian/attack
execute if score $boss boss matches 2 run function game:boss/fight/stray/attack
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/attack
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/attack
execute if score $boss boss matches 5 run function game:boss/fight/ghast/attack
execute if score $mode settings matches 1 run function game:boss/fight/stone_monster/attack
execute if score $mode settings matches 2 run function game:boss/fight/mummy/attack
