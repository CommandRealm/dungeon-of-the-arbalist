# called from game:main. This is useful for when things need to run when mob bois are dead

# called when a room is plagued
execute as @e[type=area_effect_cloud,tag=plagued_room] at @s run function game:enemy/volition/plague/plagued_room
# plague dude
execute if entity @e[type=wither_skeleton,team=enemy,tag=plague_zombie] run function game:enemy/volition/plague/main
tag @a remove in_plagued_room

# tnt
execute as @e[type=tnt,tag=from_exploding_zombie] at @s run function game:enemy/volition/exploding_zombie/tnt