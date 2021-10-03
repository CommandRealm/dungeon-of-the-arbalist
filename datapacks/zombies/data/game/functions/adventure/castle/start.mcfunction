##Castle map start

##Wave
scoreboard players set $wave game 1

##
execute positioned 4995 87 9 run tag @e[type=marker,tag=zombie_spawnpoint,limit=1,sort=nearest] add temporary_tag
execute positioned 5003 98 9 run tag @e[type=marker,tag=zombie_spawnpoint,limit=1,sort=nearest] add temporary_tag
function game:enemy/spawn_enemy

##Boss starting
scoreboard players set $opened boss 0
scoreboard players set $started boss 0
scoreboard players set $phase boss 1
scoreboard players set $charge boss 0
scoreboard players set $portal boss 0

##Tping enemies
execute as @e[type=zombie,tag=enemy] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game,gamemode=adventure]