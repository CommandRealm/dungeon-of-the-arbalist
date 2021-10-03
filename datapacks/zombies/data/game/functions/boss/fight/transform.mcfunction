##Called to transform the boss.

##Specific boss functions
execute if score $boss boss matches 4 run function game:boss/fight/forest_essence/transform

execute as @e[tag=boss] at @s run data modify entity @s Invulnerable set value 1b
execute as @e[tag=boss] at @s run data modify entity @s NoAI set value 1b

##Stopping the charge and cooldown
scoreboard players set $charge boss -1
scoreboard players set $cooldown boss -1
scoreboard players set $active_attack boss 0


##Activating the transform
scoreboard players set $transform boss 200



##Sound and particle
execute at @e[tag=boss] run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0.15 50