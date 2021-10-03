##Called when the stray is attacking.

execute if score $attack_id boss matches 1 run function game:boss/fight/mummy/wave/main

execute if score $attack_id boss matches 3 run function game:boss/fight/mummy/dash/main

execute if score $attack_id boss matches 4 run function game:boss/fight/mummy/clouds/main
