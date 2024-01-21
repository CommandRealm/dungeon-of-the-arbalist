##Seeing if the block landed.

execute if score $attack boss matches 71.. unless entity @e[type=falling_block,tag=magma_block] run function game:boss/fight/magma_cube/block/lava
execute if score $attack boss matches 1 run function game:boss/fight/magma_cube/block/remove_lava