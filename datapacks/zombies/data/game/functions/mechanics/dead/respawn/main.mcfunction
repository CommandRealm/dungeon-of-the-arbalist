##called when there is a respawn timer.

scoreboard players remove @a[tag=playing,team=enemy,scores={respawn_timer=1..}] respawn_timer 1

execute as @a[tag=playing,team=enemy,scores={respawn_timer=1..}] at @s run spectate @p[tag=playing,team=game] @s

execute as @a[tag=playing,team=enemy,scores={respawn_timer=0}] at @s run function game:mechanics/dead/respawn/respawn

