##called to start the timer for summoning an enemy.

scoreboard players set @e[type=minecraft:marker,tag=temporary_tag,sort=random,limit=1] spawn_delay 12

scoreboard players set $spawn_in_progress game 1

##Particles and sounds
execute at @e[type=minecraft:marker,tag=temporary_tag,scores={spawn_delay=12},sort=nearest,limit=1] run playsound minecraft:block.grass.break master @a ~ ~ ~ 0.5 0.75
execute at @e[type=minecraft:marker,tag=temporary_tag,scores={spawn_delay=12},sort=nearest,limit=1] run particle minecraft:item{item:"minecraft:dirt"} ~ ~0.5 ~ 0.25 0.25 0.25 0.15 50

tag @e[type=minecraft:marker,tag=temporary_tag,scores={spawn_delay=12},sort=random,limit=1] remove temporary_tag



execute if entity @e[type=minecraft:marker,tag=temporary_tag] run function game:enemy/spawn_enemy



return 1