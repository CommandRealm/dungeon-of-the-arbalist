##Called to tag doors

##Generating wave.
execute store result score $rand random run loot insert 0 1 0 loot random:boss_door_wave
function random:reset_chest

##copying random score
scoreboard players operation $boss_door game = $rand random


execute as @e[type=area_effect_cloud,tag=boss_door] at @s run function game:default/generation/door/boss/create_wave_marker
execute as @e[type=area_effect_cloud,tag=boss_door] at @s run function game:default/generation/door/boss/generate_boss_door_price