##Called to warn that there is about to be a fire
execute as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game,tag=in_boss_room]
execute as @e[type=wither_skeleton,tag=boss] at @s run playsound minecraft:entity.husk.hurt master @a ~ ~ ~ 1 0.75
execute as @e[type=wither_skeleton,tag=boss] at @s run particle lava ~ ~1 ~ 0 0 0 0.1 15