# called when there is a skele knight

execute as @e[type=skeleton,tag=skeleton_knight,tag=!player_nearby] at @s if entity @a[tag=playing,gamemode=adventure,team=!enemy,distance=..5] run function game:enemy/volition/skeleton_knight/player_nearby
execute as @e[type=skeleton,tag=skeleton_knight,tag=player_nearby] at @s unless entity @a[tag=playing,gamemode=adventure,team=!enemy,distance=..5] run function game:enemy/volition/skeleton_knight/player_far