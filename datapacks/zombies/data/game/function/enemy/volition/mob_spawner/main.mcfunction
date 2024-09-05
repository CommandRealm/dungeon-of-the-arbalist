# called when there is a mob spawny boi

# particles
execute at @e[type=minecraft:magma_cube,tag=mob_spawner_hitbox,team=enemy] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.15 0.15 0.15 0.1 1

# timer
scoreboard players remove @e[type=minecraft:magma_cube,tag=mob_spawner_hitbox,team=enemy] attack 1

# when timer hits 0
execute as @e[type=minecraft:magma_cube,tag=mob_spawner_hitbox,scores={attack=..0},team=enemy] at @s run function game:enemy/volition/mob_spawner/spawn_enemies
return 1