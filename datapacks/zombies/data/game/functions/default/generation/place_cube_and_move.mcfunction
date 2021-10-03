##Random segment
function game:default/generation/random/random_cube

##Place cube
function game:default/generation/place_cube


##move
tp @s ~ ~ ~37
scoreboard players add @s grid_z 1
execute if score @s grid_z > $right generation run function game:default/generation/move_back_and_down

execute unless entity @s[tag=generation_over] at @s run schedule function game:default/generation/call_place_cube_and_move 1t
kill @s[tag=generation_over]