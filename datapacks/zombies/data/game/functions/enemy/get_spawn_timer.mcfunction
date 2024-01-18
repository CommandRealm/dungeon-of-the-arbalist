##called to give us a random enemy timer

execute store result score $rand random run loot insert 0 1 0 loot random:spawn_timer
function random:reset_chest

##calculating the wave into the equation

execute if score $mode settings matches 0 if score $wave game matches 1 run scoreboard players set $calculate calculate 120
execute if score $mode settings matches 0 if score $wave game matches 2 run scoreboard players set $calculate calculate 110
execute if score $mode settings matches 0 if score $wave game matches 3 run scoreboard players set $calculate calculate 100
execute if score $mode settings matches 0 if score $wave game matches 4 run scoreboard players set $calculate calculate 90
execute if score $mode settings matches 0 if score $wave game matches 5 run scoreboard players set $calculate calculate 80
execute if score $mode settings matches 0 if score $wave game matches 6 run scoreboard players set $calculate calculate 75
execute if score $mode settings matches 0 if score $wave game matches 7 run scoreboard players set $calculate calculate 70
execute if score $mode settings matches 0 if score $wave game matches 8 run scoreboard players set $calculate calculate 65
execute if score $mode settings matches 0 if score $wave game matches 9 run scoreboard players set $calculate calculate 60
execute if score $mode settings matches 0 if score $wave game matches 10 run scoreboard players set $calculate calculate 55
execute if score $mode settings matches 0 if score $wave game matches 11 run scoreboard players set $calculate calculate 50
execute if score $mode settings matches 0 if score $wave game matches 12 run scoreboard players set $calculate calculate 45
execute if score $mode settings matches 0 if score $wave game matches 13 run scoreboard players set $calculate calculate 40
execute if score $mode settings matches 0 if score $wave game matches 14 run scoreboard players set $calculate calculate 35
execute if score $mode settings matches 0 if score $wave game matches 15.. run scoreboard players set $calculate calculate 30

##If we're on medium our higher, speeding the spawns up a bit
execute if score $wave game matches 1..3 if score $difficulty settings matches 2.. run scoreboard players set $calculate calculate 90

##If this is the default mode
execute if score $mode settings matches 0 run function game:default/add_spawn_timer_from_nearby_players
execute if score $mode settings matches 1.. run function game:adventure/add_spawn_timer

##multiplying enemy spawn timer score
scoreboard players operation $rand random += $calculate calculate

##copying random to our entity timer score
scoreboard players operation @s enemy_spawn_time = $rand random