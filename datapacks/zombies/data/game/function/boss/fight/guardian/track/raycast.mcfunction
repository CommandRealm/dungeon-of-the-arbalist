##Raycast
scoreboard players remove $calculate calculate 1
particle minecraft:dust{color:[0.298f,0.878f,0.953f],scale:1.0f} ~ ~ ~ 0 0 0 0 1
particle minecraft:dust{color:[0.098f,0.388f,0.827f],scale:1.0f} ~ ~ ~ 0 0 0 0 1
execute if score $calculate calculate matches 1.. unless entity @a[distance=..1,tag=playing,tag=tracking] positioned ^ ^ ^0.5 run function game:boss/fight/guardian/track/raycast
return 1