##Called to start the default mode
function help:b17ee4ef2fd579e30e85e621c1388e131569445837f6421a1b95a081328755ff
title @a[tag=playing] title [{"text":"Go","color":"green","type":"text"},{"text":"!","color":"dark_green","type":"text"}]


##sounds
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.75
execute as @a[tag=playing] at @s run playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0


##moving time up
scoreboard players set $time game 900

effect give @a[tag=playing] minecraft:night_vision 15 0 true

# removing forceloads
forceload remove all

##Impossible's damage
execute if score $difficulty settings matches 6 run effect give @a[tag=playing] minecraft:wither 2 0 true


return 1