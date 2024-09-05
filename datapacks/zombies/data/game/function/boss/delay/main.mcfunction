##Main delay function for starting the bossfight.

scoreboard players remove $delay boss 1

##Particles on torthar
execute if score $mode settings matches 2 run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete"}} 3160 54 261 0.25 0.25 0.25 0.15 20
execute if score $mode settings matches 2 run particle minecraft:falling_dust{block_state:{Name:"minecraft:yellow_concrete"}} 3160 54 261 0.25 0.25 0.25 0.15 10
execute if score $mode settings matches 2 run particle minecraft:smoke 3160 54 261 0.25 0.25 0.25 0.15 10

##Specific boss functions
execute if score $boss boss matches 2 run function game:boss/fight/stray/delay

execute if score $delay boss matches 0 run function game:boss/fight/start
return 1