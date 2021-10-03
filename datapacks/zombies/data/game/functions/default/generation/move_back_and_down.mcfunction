##called to move us back to the left side and down a column

##Setting our grid z score
scoreboard players operation @s grid_z = $left generation

##putting us back to the left
execute store result entity @s Pos[2] double 1 run scoreboard players get @s generation

##moving us down
scoreboard players remove @s grid_x 1

##tping us down
execute at @s run tp @s ~-37 ~ ~

##if we're too far down, tag us
execute if score @s grid_x < $down generation run tag @s add generation_over