##Called to move us towards the corner.

##Tp
execute at @s run tp @s ~37 ~ ~-37

##removing score
scoreboard players remove $movement_remaining corner_movement 1

##Recall function if we need to move more
execute if score $movement_remaining corner_movement matches 1.. run function game:default/generation/move_to_corner