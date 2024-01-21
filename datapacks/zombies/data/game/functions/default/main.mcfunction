##called when the default gamemode is being played.


##Pre-wave
execute if score $time game matches ..999 unless score $end game matches 0.. run function game:default/check_pre-wave

execute if score $time game matches 1000.. unless score $end game matches 0.. if score $cutscene game matches 0 run function game:default/wave/main

##If there is no cutscene in progress, call the general default commands

execute if score $cutscene game matches 0 run function game:default/active

##Containing spectators
execute as @a[gamemode=spectator] at @s if entity @s[y=-50,distance=..50] run tp @s ~ 0 ~



# volition intro text
execute if score $volition game matches 1 as @a[tag=playing,tag=mechanics,scores={intro_text=1..}] at @s run function game:default/wave/volition/intro_text/main