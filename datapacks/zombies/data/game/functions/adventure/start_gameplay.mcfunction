##Called to start the gameplay




##Called to start the default mode
effect clear @a[tag=playing]
title @a[tag=playing] times 0 25 5
title @a[tag=playing] title [{"text":"Go","color":"green"},{"text":"!","color":"dark_green"}]


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


# random trial
execute as @a[tag=playing,team=game,tag=trial_random] at @s run function game:trials/random/start

# if we have trials
function game:trials/check_trials
execute as @a[tag=playing,team=game,tag=active_trial] at @s run function game:trials/tellraw
function game:modifiers/tellraw

# if we have scramble
execute as @a[tag=playing,team=!enemy,tag=trial_scramble] at @s run function game:trials/scramble/new_trial



##starting enemy spawn timers
execute as @a[tag=playing,gamemode=adventure,sort=random,limit=10,tag=!in_boss_room] at @s run function game:enemy/get_spawn_timer
