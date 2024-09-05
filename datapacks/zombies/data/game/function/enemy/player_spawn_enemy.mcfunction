##Called when we decide to summon an enemy

##Getting someone a new enemy spawn timer score
scoreboard players reset @s enemy_spawn_time

##tagging players so we don't give the score to someone who already has one.
tag @a[gamemode=adventure,tag=playing,scores={enemy_spawn_time=0..},team=game] add temporary_tag
##new timer
execute as @r[gamemode=adventure,tag=playing,tag=!temporary_tag,tag=!in_boss_room,team=game] at @s run function game:enemy/get_spawn_timer
##remove tag
tag @a remove temporary_tag

##If this is the default mode.
execute if score $mode settings matches 0 run function game:enemy/player_spawn_enemy_default
execute unless score $mode settings matches 0 run function game:enemy/player_spawn_enemy_adventure




##Other function (temporary tag is removed there.)
execute if entity @s[tag=!in_boss_room,team=game] run function game:enemy/spawn_enemy


tag @e[type=minecraft:marker,tag=temporary_tag] remove temporary_tag


return 1