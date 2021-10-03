##Called when the forest essence is attacking.
execute if score $attack_id boss matches 1 run function game:boss/fight/forest_essence/control/main
execute if score $attack_id boss matches 3 run function game:boss/fight/forest_essence/block/burst_main
execute if score $attack_id boss matches 4 run function game:boss/fight/forest_essence/block/circle_main