##Raycast
scoreboard players remove $calculate calculate 1
particle dust 0.298 0.878 0.953 1 ~ ~ ~ 0 0 0 0 1
particle dust 0.098 0.388 0.827 1 ~ ~ ~ 0 0 0 0 1
execute if score $calculate calculate matches 1.. unless entity @a[tag=playing,tag=tracking,distance=..1] positioned ^ ^ ^0.5 run function game:boss/fight/guardian/track/raycast