# called main volition mode checks

# ghost
execute if entity @e[type=zombie,team=enemy,tag=ghost] run function game:enemy/volition/ghost/main

# spawner
execute if entity @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox] run function game:enemy/volition/mob_spawner/main

# fire
execute as @e[type=skeleton,tag=fire_skeleton,nbt={Fire:-1s}] at @s run data modify entity @s Fire set value 1000s

# phantom
execute if entity @e[type=phantom,team=enemy,tag=phantom_part] run function game:enemy/volition/phantom/main

# skele knight
execute if entity @e[type=skeleton,team=enemy,tag=skeleton_knight] run function game:enemy/volition/skeleton_knight/main

# exploding boi
execute as @e[type=wither_skeleton,team=enemy,tag=exploding_zombie] at @s run function game:enemy/volition/exploding_zombie/main


