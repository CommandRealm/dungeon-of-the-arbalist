##Called when the game is over.

##Getting ghosts on the proper team
team join dead @a[tag=playing,team=enemy]

##Setting end msg cooldown
scoreboard players set $end game 101
forceload add 1821 -131 1737 -231

##Giving all players blindness
function help:b17ee4ef2fd579e30e85e621c1388e131569445837f6421a1b95a081328755ff

##Clearing the map
tp @e[tag=die_between_games] 0 0 0
kill @e[tag=die_between_games]
return 1