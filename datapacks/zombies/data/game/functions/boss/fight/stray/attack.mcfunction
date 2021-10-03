##Called to attack as the stray.
execute if score $attack_id boss matches 1 run function game:boss/fight/stray/invisibility
execute if score $attack_id boss matches 2 run function game:boss/fight/stray/bow
execute if score $attack_id boss matches 3 run function game:boss/fight/stray/clones/start