##called when there is a respawn timer.

scoreboard players remove @s respawn_timer 1

spectate @p[tag=playing,team=game] @s

execute if score @s respawn_timer matches 0 run function game:mechanics/dead/respawn/respawn

