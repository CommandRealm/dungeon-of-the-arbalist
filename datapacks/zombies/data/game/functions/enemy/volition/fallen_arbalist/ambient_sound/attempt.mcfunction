
# generating next timer
function game:enemy/volition/fallen_arbalist/ambient_sound/get_timer

# randomizing if we should play a sound
scoreboard players set $mod random 3
function random:random
execute if score $rand random matches 0 run playsound minecraft:entity.drowned.ambient master @a ~ ~ ~ 1 0