##called to start the timer for summoning an enemy.

scoreboard players set @e[type=marker,tag=temporary_tag,sort=random,limit=1] spawn_delay 12

scoreboard players set $spawn_in_progress game 1

##Particles and sounds
execute at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_delay=12}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0.75
execute at @e[type=marker,tag=temporary_tag,sort=nearest,limit=1,scores={spawn_delay=12}] run particle item dirt ~ ~0.5 ~ 0.25 0.25 0.25 0.15 50

tag @e[type=marker,tag=temporary_tag,sort=random,limit=1,scores={spawn_delay=12}] remove temporary_tag



execute if entity @e[type=marker,tag=temporary_tag] run function game:enemy/spawn_enemy


