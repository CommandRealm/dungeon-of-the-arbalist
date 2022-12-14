##Random segment
execute if score $generation_type settings matches 0 run function game:default/generation/random/random_cube
##Minibosses only
execute if score $generation_type settings matches -1 run function game:default/generation/random/minibosses_only

##Place cube
function game:default/generation/place_cube


##move
tp @s ~ ~ ~37
scoreboard players add @s grid_z 1
execute if score @s grid_z > $right generation run function game:default/generation/move_back_and_down

execute unless entity @s[tag=generation_over] at @s run schedule function game:default/generation/call_place_cube_and_move 1t
kill @s[tag=generation_over]