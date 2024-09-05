# called when there is a skele knight

execute as @e[type=minecraft:skeleton,tag=skeleton_knight,tag=!player_nearby] at @s if entity @a[gamemode=adventure,distance=..5,tag=playing,team=!enemy] run function game:enemy/volition/skeleton_knight/player_nearby
execute as @e[type=minecraft:skeleton,tag=skeleton_knight,tag=player_nearby] at @s unless entity @a[gamemode=adventure,distance=..5,tag=playing,team=!enemy] run function game:enemy/volition/skeleton_knight/player_far
return 1