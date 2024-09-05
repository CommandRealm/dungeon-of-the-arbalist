##called to summon magma cubes
execute at @e[type=minecraft:magma_cube,tag=boss] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d}]}
execute at @e[type=minecraft:magma_cube,tag=boss] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d}]}
execute at @e[type=minecraft:magma_cube,tag=boss] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d}]}
execute at @e[type=minecraft:magma_cube,tag=boss] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d}]}
execute at @e[type=minecraft:magma_cube,tag=boss] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.35d}]}

scoreboard players set @e[type=minecraft:magma_cube,tag=needs_initialization] enemy_health 20
execute as @e[type=minecraft:magma_cube,tag=needs_initialization] at @s run function game:enemy/initialize

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200
return 1