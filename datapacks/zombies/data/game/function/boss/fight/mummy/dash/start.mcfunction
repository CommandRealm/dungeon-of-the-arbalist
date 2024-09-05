##Called to start the fire dash.


effect give @e[type=minecraft:wither_skeleton,tag=boss] minecraft:weakness 6 255 true
effect give @e[type=minecraft:wither_skeleton,tag=boss] minecraft:slowness 6 255 true
scoreboard players set $attack boss 90
return 1