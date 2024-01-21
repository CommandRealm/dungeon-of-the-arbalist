# called by a fallen arbalist (mob not player)

# hurt
execute if data entity @s {HurtTime:9s} run function game:enemy/volition/fallen_arbalist/hurt

# particle
particle smoke ~ ~-.25 ~ 0 0 0 0 1
particle ash ~ ~1.25 ~ 0.3 0.6 0.3 0.1 2

# ambient sound
scoreboard players remove @s attack 1
execute if score @s attack matches ..0 run function game:enemy/volition/fallen_arbalist/ambient_sound/attempt

# other sound
playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 0.04 0