# called to spawn a mob spawner


# giving them all the same id
execute as @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] at @s run function game:enemy/volition/mob_spawner/set_cooldown
scoreboard players set @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] enemy_health 300
scoreboard players set @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] enemy_loot_table 1

scoreboard players add $mob_id id 1

scoreboard players operation @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] id = $mob_id id

execute as @e[type=magma_cube,tag=mob_spawner_hitbox,tag=needs_initialization] at @s run scoreboard players operation @e[tag=mob_spawner_part,tag=needs_initialization] id = @s id

tag @e[type=area_effect_cloud,tag=needs_initialization] remove needs_initialization
 
tag @e[type=falling_block] remove needs_initialization