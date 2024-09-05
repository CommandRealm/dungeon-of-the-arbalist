##called to raycast
scoreboard players remove $calculate calculate 1
particle minecraft:dust{color:[0.345f,1.0f,0.694f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 force @a[tag=in_boss_room]
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.25 run function game:boss/fight/guardian/circle/marker_raycast
return 1