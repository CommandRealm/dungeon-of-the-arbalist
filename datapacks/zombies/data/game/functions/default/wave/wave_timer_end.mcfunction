##Called when the wave timer ends.

##Disabling future spawns.
scoreboard players set @a[tag=playing] enemy_spawn_time -1

##setting seconds to 0
scoreboard players set $second bossbar_time 0

##Seeing how many mobs we need to have killed.
scoreboard players operation $enemies_required game = $enemies_spawned game
scoreboard players operation $enemies_required game *= $2 number
scoreboard players operation $enemies_required game /= $10 number

##If we have already killed that many
execute store result score $enemies_left game if entity @e[tag=enemy,tag=!tutorial_enemy]
execute store result score $calculate calculate if entity @e[tag=enemy,tag=!tutorial_enemy]
function game:default/wave/check_wave_end