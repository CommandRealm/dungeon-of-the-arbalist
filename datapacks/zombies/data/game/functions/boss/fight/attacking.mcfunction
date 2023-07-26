##Called when we're attacking


scoreboard players remove $attack boss 1

##specific boss functions
execute if score $boss boss matches 1 run function game:boss/fight/guardian/attacking
execute if score $boss boss matches 2 run function game:boss/fight/stray/attacking
execute if score $boss boss matches 3 run function game:boss/fight/magma_cube/attacking
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/attacking
execute if score $boss boss matches 5 run function game:boss/fight/ghast/attacking
execute if score $mode settings matches 1 run function game:boss/fight/stone_monster/attacking
execute if score $mode settings matches 2 run function game:boss/fight/mummy/attacking