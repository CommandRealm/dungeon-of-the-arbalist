##Called when we decide to summon an enemy

##Getting someone a new enemy spawn timer score
scoreboard players reset @s enemy_spawn_time

##tagging players so we don't give the score to someone who already has one.
tag @a[tag=playing,scores={enemy_spawn_time=0..},gamemode=adventure,team=game] add temporary_tag
##new timer
execute as @r[tag=playing,tag=!temporary_tag,gamemode=adventure,team=game,tag=!in_boss_room] at @s run function game:enemy/get_spawn_timer
##remove tag
tag @a remove temporary_tag

##If this is the default mode.
execute if score $mode settings matches 0 run function game:enemy/player_spawn_enemy_default
execute unless score $mode settings matches 0 run function game:enemy/player_spawn_enemy_adventure




##Other function (temporary tag is removed there.)
execute if entity @s[team=game,tag=!in_boss_room] run function game:enemy/spawn_enemy


tag @e[type=marker,tag=temporary_tag] remove temporary_tag

