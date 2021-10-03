##called to teleport self to the tutorial
tp @s 4 82 4 180 0
tellraw @s [{"text":"☀ ","color":"gold"},{"text":"Teleported to the tutorial.","color":"green"}]
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
