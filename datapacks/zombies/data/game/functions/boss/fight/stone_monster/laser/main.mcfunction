##Called when the laser attack is going.

execute if score $attack boss matches 1000.. run function game:boss/fight/stone_monster/laser/call_blocks
execute if score $attack boss matches ..200 run function game:boss/fight/stone_monster/laser/laser