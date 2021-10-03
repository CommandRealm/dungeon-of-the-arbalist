##Called when the guardian is attacking

execute if score $attack_id boss matches 1 run function game:boss/fight/guardian/track/main
execute if score $attack_id boss matches 2 run function game:boss/fight/guardian/floor/main
execute if score $attack_id boss matches 3 run function game:boss/fight/guardian/toss/main
execute if score $attack_id boss matches 4 run function game:boss/fight/guardian/circle/main