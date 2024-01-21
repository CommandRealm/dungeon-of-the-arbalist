##Called when the wave timer ends.

##Disabling future spawns.
scoreboard players set @a[tag=playing] enemy_spawn_time -1

##setting seconds to 0
scoreboard players set $second bossbar_time 0

##Seeing how many mobs we need to have killed.
scoreboard players operation $enemies_required game = $enemies_spawned game
scoreboard players operation $enemies_required game *= $2 number
scoreboard players operation $enemies_required game /= $10 number

# tagging all mobs so only those we have apply
tag @e[type=#minecraft:enemy,team=enemy] add spawned_before_wave_end

# enemies left isd how many enemies are currently in the map



##If we have already killed that many
execute store result score $enemies_left game if entity @e[type=#minecraft:enemy,tag=enemy,tag=!tutorial_enemy,tag=!skip_for_wave_count]
execute store result score $calculate calculate if entity @e[type=#minecraft:enemy,tag=enemy,tag=!tutorial_enemy,tag=!skip_for_wave_count]
# adding one to offset the remove one in the function
scoreboard players add $enemies_left game 1
function game:default/wave/check_wave_end


# if there are still mobs, forceload the chunks
execute if score $wave game matches 15.. as @e[type=#minecraft:enemy] at @s run data modify entity @s PersistenceRequired set value 1b