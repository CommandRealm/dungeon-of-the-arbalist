##Called to start the dash and activate the trail.
execute if score $attack boss matches 20 as @e[type=wither_skeleton,tag=boss,limit=1] at @s run function game:boss/fight/mummy/dash/dash
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s rotated ~ 0 positioned ^0.15 ^ ^-0.25 run particle flame ~ ~-2 ~ 0 0 0 0 1
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s rotated ~ 0 positioned ^-0.15 ^ ^-0.25 run particle flame ~ ~-2 ~ 0 0 0 0 1
execute if score $attack boss matches 0 run function game:boss/fight/mummy/dash/over