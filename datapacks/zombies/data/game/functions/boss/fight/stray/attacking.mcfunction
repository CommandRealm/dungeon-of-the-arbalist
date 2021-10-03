##Called when the stray is attacking.

execute if score $attack boss matches 1 if score $attack_id boss matches 1 run function game:boss/fight/stray/invisibility_over
execute if score $attack boss matches 1 if score $attack_id boss matches 2 run function game:boss/fight/stray/bow_over
execute if score $attack_id boss matches 3 run function game:boss/fight/stray/clones/main