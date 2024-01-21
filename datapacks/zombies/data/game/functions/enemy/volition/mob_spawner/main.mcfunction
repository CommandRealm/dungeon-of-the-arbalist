# called when there is a mob spawny boi

# particles
execute at @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox] run particle soul_fire_flame ~ ~0.5 ~ 0.15 0.15 0.15 0.1 1
execute at @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox] run particle smoke ~ ~0 ~ 0.05 0.05 0.05 0.05 1

# hurt time
execute as @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox,nbt={HurtTime:9s}] at @s run function game:enemy/volition/mob_spawner/hurt
# timer
scoreboard players remove @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox] attack 1

# when timer hits 0
execute as @e[type=magma_cube,team=enemy,tag=mob_spawner_hitbox,scores={attack=..0}] at @s run function game:enemy/volition/mob_spawner/spawn_enemies