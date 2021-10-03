##called to raycast
scoreboard players remove $calculate calculate 1
particle dust 0.459 0.459 0.459 1 ~ ~ ~ 0 0 0 0 1 force @s
execute unless score $calculate calculate matches ..0 positioned ^ ^ ^0.5 unless entity @e[type=area_effect_cloud,tag=temporary_tag,distance=..1.5] run function game:adventure/compass/raycast