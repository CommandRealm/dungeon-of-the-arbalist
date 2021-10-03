##Called to tag doors

##Generating wave.
execute store result score $rand random run loot insert 0 1 0 loot random:dark_door_wave
function random:reset_chest

##copying random score
scoreboard players operation $dark_door game = $rand random


execute as @e[type=area_effect_cloud,tag=dark_door] at @s run function game:default/generation/door/dark/create_wave_marker
execute as @e[type=area_effect_cloud,tag=dark_door] at @s run function game:default/generation/door/dark/generate_dark_door_price
