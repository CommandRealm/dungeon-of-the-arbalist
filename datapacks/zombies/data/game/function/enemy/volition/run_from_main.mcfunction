# called from game:main. This is useful for when things need to run when mob bois are dead

# called when a room is plagued
execute as @e[type=minecraft:area_effect_cloud,tag=plagued_room] at @s run function game:enemy/volition/plague/plagued_room
# plague dude
execute if entity @e[type=minecraft:wither_skeleton,tag=plague_zombie,team=enemy] run function game:enemy/volition/plague/main
tag @a remove in_plagued_room

# tnt
execute as @e[type=minecraft:tnt,tag=from_exploding_zombie] at @s run function game:enemy/volition/exploding_zombie/tnt
return 1