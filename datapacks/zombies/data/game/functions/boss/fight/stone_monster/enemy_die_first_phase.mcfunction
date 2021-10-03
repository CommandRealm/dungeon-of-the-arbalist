##Called when an enemy dies in the first phase.
scoreboard players add $spectral_arrow boss 1
execute if score $starting_players game matches 1 if score $spectral_arrow boss matches 10.. run function game:boss/fight/stone_monster/drop_spectral_arrow
execute unless score $starting_players game matches 1 if score $spectral_arrow boss matches 20.. run function game:boss/fight/stone_monster/drop_spectral_arrow