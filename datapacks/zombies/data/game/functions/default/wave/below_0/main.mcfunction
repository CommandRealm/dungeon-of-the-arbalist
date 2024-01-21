# called when the wave timer is below 0
execute if score $wave_length game matches 0 run function game:default/wave/wave_timer_end
execute if score $wave_length game matches -600 run function game:default/wave/below_0/reveal_mobs

# making sure we have enough mobs to kill
scoreboard players operation $calculate_2 calculate = $enemies_left game
scoreboard players operation $calculate_2 calculate -= $enemies_required game

# seeing how many physical mobs are left
execute store result score $calculate calculate if entity @e[type=#minecraft:enemy,tag=enemy,tag=!tutorial_enemy,tag=!skip_for_wave_count]

# making sure we have enough to kill
execute if score $calculate_2 calculate > $calculate calculate run function game:default/wave/below_0/not_enough_mobs