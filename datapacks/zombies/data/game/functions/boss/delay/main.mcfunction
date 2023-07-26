##Main delay function for starting the bossfight.

scoreboard players remove $delay boss 1

##Particles on torthar
execute if score $mode settings matches 2 run particle falling_dust black_concrete 3160 54 261 0.25 0.25 0.25 0.15 20
execute if score $mode settings matches 2 run particle falling_dust yellow_concrete 3160 54 261 0.25 0.25 0.25 0.15 10
execute if score $mode settings matches 2 run particle smoke 3160 54 261 0.25 0.25 0.25 0.15 10

##Specific boss functions
execute if score $boss boss matches 2 run function game:boss/fight/stray/delay
execute if score $boss boss matches 5 run function game:boss/fight/ghast/delay

execute if score $delay boss matches 0 run function game:boss/fight/start