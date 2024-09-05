# called main volition mode checks

# ghost
execute if entity @e[type=minecraft:zombie,tag=ghost,team=enemy] run function game:enemy/volition/ghost/main

# spawner
execute if entity @e[type=minecraft:magma_cube,tag=mob_spawner_hitbox,team=enemy] run function game:enemy/volition/mob_spawner/main

# fire
execute as @e[type=minecraft:skeleton,tag=fire_skeleton,nbt={Fire:-1s}] at @s run data modify entity @s Fire set value 1000s

# phantom
execute if entity @e[type=minecraft:phantom,tag=phantom_part,team=enemy] run function game:enemy/volition/phantom/main

# skele knight
execute if entity @e[type=minecraft:skeleton,tag=skeleton_knight,team=enemy] run function game:enemy/volition/skeleton_knight/main

# exploding boi
execute as @e[type=minecraft:wither_skeleton,tag=exploding_zombie,team=enemy] at @s run function game:enemy/volition/exploding_zombie/main



return 1