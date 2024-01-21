# called to spawn a mob spawner


# giving them all the same id
execute as @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] at @s run function game:enemy/volition/mob_spawner/set_cooldown
scoreboard players set @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] enemy_health 400
scoreboard players set @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] enemy_loot_table 1

scoreboard players add $mob_id id 1

scoreboard players operation @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] id = $mob_id id
scoreboard players operation @e[type=block_display,tag=needs_initialization] id = $mob_id id

# tp
execute as @e[type=magma_cube,tag=needs_initialization,limit=1] at @s run tp @s ~ ~.5 ~ 0 0

tp @e[type=block_display,tag=needs_initialization,limit=1] @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization,limit=1]
execute as @e[type=block_display,tag=needs_initialization,limit=1] at @s run tp @s ~-0.5 ~-0.12 ~-0.5 0 0

# glowing
effect give @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] glowing infinite 255 true

execute as @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] at @s run scoreboard players operation @e[tag=mob_spawner_part,tag=needs_initialization] id = @s id

tag @e[type=area_effect_cloud,tag=needs_initialization] remove needs_initialization
 
tag @e[type=block_display,tag=needs_initialization] remove needs_initialization