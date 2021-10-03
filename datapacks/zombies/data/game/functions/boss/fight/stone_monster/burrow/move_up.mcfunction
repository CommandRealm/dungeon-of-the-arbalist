##Called to move the boss upwards

execute as @e[type=wither_skeleton,tag=boss] at @s run tp @s ~ ~0.5 ~

##Sound and particles
execute as @e[type=wither_skeleton,tag=boss] at @s run particle item dirt ~ ~ ~ 0 1 0 0.5 5
execute as @e[type=wither_skeleton,tag=boss] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 0.25 0

##ending it if we're in a good spot
execute if score $attack boss matches ..25 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run scoreboard players set $attack boss 1