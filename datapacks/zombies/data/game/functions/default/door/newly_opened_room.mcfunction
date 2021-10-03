##Called when this room just opened.


##Finding zombie spawnpoints and tagging the number of zombies we want in that room.
execute if score $wave game matches ..3 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=1] add temporary_tag
execute if score $wave game matches 4..5 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=1] add temporary_tag
execute if score $wave game matches 6..7 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=2] add temporary_tag
execute if score $wave game matches 8..9 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=3] add temporary_tag
execute if score $wave game matches 10..11 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=4] add temporary_tag
execute if score $wave game matches 12..13 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=5] add temporary_tag
execute if score $wave game matches 14 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=6] add temporary_tag
execute if score $wave game matches 15 positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=7] add temporary_tag
tag @e[type=marker,tag=temporary_tag] add no_delay_spawn
##Summoning enemies.
function game:enemy/spawn_enemy


