##Generation.
kill @e[type=item,x=2000,y=66,z=0,distance=..750]
kill @e[type=area_effect_cloud,tag=die_between_games]
kill @e[type=area_effect_cloud,tag=generation_marker]
summon area_effect_cloud 2000.5 66 0.5 {Duration:82,Tags:["generation_marker","base_generation_marker"]}

##Calculating half of the generation grid size
execute if score $grid_size settings matches 0 run scoreboard players set $movement_remaining corner_movement 2
execute if score $grid_size settings matches 1 run scoreboard players set $movement_remaining corner_movement 3
execute if score $grid_size settings matches 2 run scoreboard players set $movement_remaining corner_movement 4

##setting our grid position scores
scoreboard players operation @e[type=area_effect_cloud,tag=base_generation_marker] grid_x = $movement_remaining corner_movement
scoreboard players operation @e[type=area_effect_cloud,tag=base_generation_marker] grid_z = $movement_remaining corner_movement
scoreboard players operation @e[type=area_effect_cloud,tag=base_generation_marker] grid_z *= $-1 number

##keeping track of half length
scoreboard players operation $half_length generation = $movement_remaining corner_movement

##Marking corners
scoreboard players operation $left generation = $movement_remaining corner_movement
scoreboard players operation $right generation = $movement_remaining corner_movement
scoreboard players operation $up generation = $movement_remaining corner_movement
scoreboard players operation $down generation = $movement_remaining corner_movement


scoreboard players operation $left generation *= $-1 number
scoreboard players operation $down generation *= $-1 number


##Moving area effect cloud to the proper spot.
execute as @e[type=area_effect_cloud,tag=generation_marker] at @s run function game:default/generation/move_to_corner

##Saving column coordinates
execute as @e[type=area_effect_cloud,tag=generation_marker] at @s store result score @s generation run data get entity @s Pos[2] 1

##Random segment
execute as @e[type=area_effect_cloud,tag=base_generation_marker] at @s run function game:default/generation/place_cube_and_move


##Black concrete
fill 1991 0 9 2009 4 -9 minecraft:black_concrete hollow


##Tags
tag @a[tag=playing] add in_generation