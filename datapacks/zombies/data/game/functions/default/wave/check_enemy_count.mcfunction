##Called to check the enemy count.

execute store result score $calculate calculate if entity @e[tag=enemy,tag=!tutorial_enemy]
execute unless score $calculate calculate = $enemies_left game run function game:default/wave/check_wave_end