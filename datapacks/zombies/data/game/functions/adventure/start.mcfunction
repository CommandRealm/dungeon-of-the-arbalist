##Called when we start the default mode


##Teleport and effects.
execute if score $mode settings matches 1 run tp @a[tag=playing] 5000 0 0 0 90
execute if score $mode settings matches 2 run tp @a[tag=playing] 3000 0 0 0 90
effect give @a[tag=playing] levitation infinite 255 true
effect give @a[tag=playing] resistance infinite 255 true
effect give @a[tag=playing] blindness infinite 255 true
effect give @a[tag=playing] slowness infinite 255 true
effect give @a[tag=playing] jump_boost infinite 200 true
clear @a[tag=playing]


##Title
title @a[tag=playing] title [{"text":""}]

##Crossbow id
scoreboard players set @a[tag=playing] crossbow_id 0

##shoot crossbow objective
scoreboard players reset @a[tag=playing] shoot_crossbow

##Enemy spawn time
scoreboard players reset @a enemy_spawn_time

##activating the cutscene
scoreboard players set $cutscene game 1

##In boss room tag
tag @a remove in_boss_room

##Castle map forceload
execute if score $mode settings matches 1 run forceload add 4951 85 5167 -44

##Kingdom
execute if score $mode settings matches 2 run forceload add 3021 -9 3210 278


##Health pot counter
scoreboard players set $health_pot game 0

##Boss fight
scoreboard players set $started boss 0


##Setting boss score to be null (essentially)
scoreboard players set $boss boss -1

##Resetting compass objective
scoreboard players set @a[tag=playing] objective 0
execute if score $mode settings matches 2 run scoreboard players set @a[tag=playing] objective 1



##Kingdom functions
scoreboard players set $forge_boss game 0
scoreboard players set $king_boss game 0
scoreboard players set $crypt_animation game 0
scoreboard players set $crypt_animation_played game 0

# number of players

scoreboard players set $finish_time game -1