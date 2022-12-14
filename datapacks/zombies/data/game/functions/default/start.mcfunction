##Called when we start the default mode

##objectives
scoreboard objectives remove grid_x
scoreboard objectives remove grid_z
scoreboard objectives remove corner_movement
scoreboard objectives remove generation

scoreboard objectives add grid_x dummy
scoreboard objectives add grid_z dummy
scoreboard objectives add corner_movement dummy
scoreboard objectives add generation dummy

##Teleport and effects.
tp @a[tag=playing] 1784 58 -199 -90 90
effect give @a[tag=playing] levitation 100000 255 true
effect give @a[tag=playing] resistance 100000 255 true
effect give @a[tag=playing] blindness 100000 255 true
effect give @a[tag=playing] slowness 100000 255 true
effect give @a[tag=playing] jump_boost 100000 200 true
clear @a[tag=playing]


##Title
title @a[tag=playing] title [{"text":""}]

##Resetting wave score
scoreboard players set $wave game 0

execute if score $generation_type settings matches -1 run scoreboard players set $wave game 7

##Crossbow id
scoreboard players set @a[tag=playing] crossbow_id 0

##shoot crossbow objective
scoreboard players reset @a[tag=playing] shoot_crossbow

##Enemy spawn time
scoreboard players reset @a enemy_spawn_time

##removing trigger objective
scoreboard objectives remove vote_end

##activating the cutscene
scoreboard players set $cutscene game 1

##In boss room tag
tag @a remove in_boss_room

##Minibosses
scoreboard players set $miniboss_1 game -1
scoreboard players set $miniboss_2 game -1