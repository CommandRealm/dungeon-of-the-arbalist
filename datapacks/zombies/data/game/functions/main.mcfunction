##The function that runs whenever the game is running.

##General timer
scoreboard players add $time game 1

##Mode
execute if score $mode settings matches 0 run function game:default/main
execute if score $mode settings matches 1.. run function game:adventure/main

##Death timer
execute if entity @e[tag=on_death_timer,limit=1] run function game:death_timer


##If there is a spectator
execute if entity @a[gamemode=spectator,team=!fallen] run function game:spectator/main

##If someone votes to end the game
execute as @a[tag=playing,scores={end=1..},team=game] at @s run function game:vote_end/vote

##If there are no players playing
execute unless entity @a[tag=playing] if score $game state matches 1 run function game:not_enough_players

##Counting down (kill switch)
scoreboard players remove $game_end_countdown game 1
execute if score $volition game matches 0 if score $game_end_countdown game matches ..12000 run function game:hour_countdown/ending_soon

##If training mode is on
execute if score $difficulty settings matches -1 run function game:training_mode/main