##called to burrow

##tp
execute as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~-0.1 ~

##sound
execute as @e[type=wither_skeleton,tag=boss] at @s run playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0

##
execute as @e[type=wither_skeleton,tag=boss] at @s if entity @s[y=67,distance=..10] if block ~ ~0.5 ~ air if block ~ ~1.5 ~ air if block ~ ~2.5 ~ air if block ~ ~2.5 ~ air run function game:boss/fight/stone_monster/burrow/burrow_over