##Called to warn that there is about to be a fire
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,tag=in_boss_room,team=game]
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 1 0.75
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run particle minecraft:lava ~ ~1 ~ 0 0 0 0.1 15
return 1