##called when the adventure gamemode is being played.


##Cutscene
execute if score $time game matches ..999 if score $cutscene game matches 1 unless score $end game matches 0.. run function game:adventure/cutscene

##Start
execute if score $time game matches 1 run function game:adventure/start
execute if score $time game matches 14 run function game:adventure/reset_map

##If there is no cutscene in progress, call the general adventure commands

execute if score $cutscene game matches 0 run function game:adventure/active

##Containing spectators
execute as @a[gamemode=spectator] at @s if entity @s[y=-50,distance=..50] run tp @s ~ 0 ~

##If it's the castle map.
execute if score $mode settings matches 1 run function game:adventure/castle/main
execute if score $mode settings matches 2 run function game:adventure/kingdom/main