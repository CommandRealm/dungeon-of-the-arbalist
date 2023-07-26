##called to summon magma cubes
execute at @e[type=magma_cube,tag=boss] run summon magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35}]}
execute at @e[type=magma_cube,tag=boss] run summon magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35}]}
execute at @e[type=magma_cube,tag=boss] run summon magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35}]}
execute at @e[type=magma_cube,tag=boss] run summon magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35}]}
execute at @e[type=magma_cube,tag=boss] run summon magma_cube ~ ~ ~ {Size:1,Tags:["enemy","default_name","needs_initialization","boss_minion","mini_cube"],CustomNameVisible:1b,Attributes:[{Name:"generic.movement_speed",Base:0.35}]}

scoreboard players set @e[type=magma_cube,tag=needs_initialization] enemy_health 20
execute as @e[type=magma_cube,tag=needs_initialization] at @s run function game:enemy/initialize

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200