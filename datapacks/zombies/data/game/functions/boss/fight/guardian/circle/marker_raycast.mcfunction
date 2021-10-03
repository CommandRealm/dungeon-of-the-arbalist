##called to raycast
scoreboard players remove $calculate calculate 1
particle dust 0.345 1 0.694 1 ~ ~ ~ 0 0 0 0 1 force @a[tag=in_boss_room]
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.25 run function game:boss/fight/guardian/circle/marker_raycast