##Called to start the gameplay




##Called to start the default mode
function help:b17ee4ef2fd579e30e85e621c1388e131569445837f6421a1b95a081328755ff
title @a[tag=playing] times 0 25 5
title @a[tag=playing] title [{"text":"Go","color":"green","type":"text"},{"text":"!","color":"dark_green","type":"text"}]


##sounds
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.75
execute as @a[tag=playing] at @s run playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0


##Impossible's damage
execute if score $difficulty settings matches 6 run effect give @a[tag=playing] minecraft:wither 2 0 true


##Castlemap start
execute if score $mode settings matches 1 run function game:adventure/castle/start
##Kingdom map start
execute if score $mode settings matches 2 run function game:adventure/kingdom/start




##Quiver
schedule function game:update_quiver_score 1t


##starting enemy spawn timers
execute as @a[gamemode=adventure,tag=playing,tag=!in_boss_room,sort=random,limit=10] at @s run function game:enemy/get_spawn_timer
return 1