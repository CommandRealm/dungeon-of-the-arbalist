##called when an enemy is on the delayed spontaneous crossbow cooldown
scoreboard players remove @e[tag=enemy,scores={spontaneous_time=1..}] spontaneous_time 1
execute as @e[tag=enemy,scores={spontaneous_time=0}] at @s run function game:enemy/effect/spontaneous/timer_over


##Sounds and particles
execute at @e[tag=enemy,scores={spontaneous_time=1..}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.15 1.5
execute at @e[tag=enemy,scores={spontaneous_time=1..}] run particle smoke ~ ~1.75 ~ 0 0 0 0.15 2