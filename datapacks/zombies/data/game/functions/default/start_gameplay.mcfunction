##Called to start the default mode
effect clear @a[tag=playing]
title @a[tag=playing] title [{"text":"Go","color":"green"},{"text":"!","color":"dark_green"}]


##sounds
execute as @a[tag=playing] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.75
execute as @a[tag=playing] at @s run playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0


##moving time up
scoreboard players set $time game 900

effect give @a[tag=playing] night_vision 15 0 true
effect give @a[tag=playing,tag=trial_gloom] darkness infinite 0 true

# This is active_trial not the specific one because of scramble
execute as @a[tag=playing,tag=active_trial] at @s run function game:trials/collector/start

# removing forceloads
forceload remove all

##Impossible's damage
execute if score $difficulty settings matches 6 run effect give @a[tag=playing] minecraft:wither 2 0 true

