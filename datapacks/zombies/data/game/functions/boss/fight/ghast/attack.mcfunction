##called to attack
execute if score $attack_id boss matches 1 run function game:boss/fight/magma_cube/block/start
execute if score $attack_id boss matches 2 run function game:boss/fight/magma_cube/summon_mini_cubes
execute if score $attack_id boss matches 3 run function game:boss/fight/magma_cube/shoot_arrows