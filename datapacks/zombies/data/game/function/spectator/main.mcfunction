##Called when there is a spectator.

scoreboard players enable @a[team=spectator] back_to_lobby
execute as @a[scores={back_to_lobby=1..},team=spectator] run function game:spectator/back_to_lobby

execute as @a[gamemode=spectator,tag=!spectatorable,team=!fallen] at @s unless score $cutscene game matches 1 run spectate @p[tag=playing,team=game] @s
execute as @a[gamemode=spectator,tag=!playing,tag=!spectatorable,team=!fallen] at @s if score $cutscene game matches 1 run spectate @p[tag=playing,team=game] @s
return 1