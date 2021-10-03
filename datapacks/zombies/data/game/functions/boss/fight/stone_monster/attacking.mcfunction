##Called when the stray is attacking.

execute if score $attack_id boss matches 1 if score $attack boss matches 0 run function game:boss/fight/stone_monster/summon/summon

execute if score $attack_id boss matches 2 run function game:boss/fight/stone_monster/burrow/main

execute if score $attack_id boss matches 4 run function game:boss/fight/stone_monster/laser/main
