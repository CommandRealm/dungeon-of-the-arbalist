##Called when there is a spectator.

scoreboard players enable @a[team=spectator] back_to_lobby
execute as @a[team=spectator,scores={back_to_lobby=1..}] run function game:spectator/back_to_lobby

execute as @a[gamemode=spectator,team=!fallen,tag=!spectatorable] at @s unless score $cutscene game matches 1 run spectate @p[tag=playing,team=game] @s
execute as @a[gamemode=spectator,team=!fallen,tag=!playing,tag=!spectatorable] at @s if score $cutscene game matches 1 run spectate @p[tag=playing,team=game] @s