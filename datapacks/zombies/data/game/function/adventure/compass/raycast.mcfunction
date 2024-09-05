##called to raycast
scoreboard players remove $calculate calculate 1
particle minecraft:dust{color:[0.459f,0.459f,0.459f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 force @s
execute unless score $calculate calculate matches ..0 positioned ^ ^ ^0.5 unless entity @e[type=minecraft:area_effect_cloud,distance=..1.5,tag=temporary_tag] run function game:adventure/compass/raycast
return 1