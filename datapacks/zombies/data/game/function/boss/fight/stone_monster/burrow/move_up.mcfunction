##Called to move the boss upwards

execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run tp @s ~ ~0.5 ~

##Sound and particles
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run particle minecraft:item{item:"minecraft:dirt"} ~ ~ ~ 0 1 0 0.5 5
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run playsound minecraft:block.grass.place master @a ~ ~ ~ 0.25 0

##ending it if we're in a good spot
execute if score $attack boss matches ..25 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run scoreboard players set $attack boss 1
return 1