# called to spawn enemies

# tagging the spawnpoints in the room
execute at @e[type=area_effect_cloud,tag=generation_marker,limit=1,sort=nearest] positioned ~-16 ~-15 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31] add temp

# tagging five nearest ones
tag @e[type=marker,tag=zombie_spawnpoint,tag=temp,sort=nearest,limit=5] add temp2



# picking a random one to spawn
tag @e[type=marker,tag=zombie_spawnpoint,tag=temp2,sort=random,limit=1,distance=1..] add temporary_tag
tag @e[type=marker,tag=temporary_tag] add mob_spawner_spawn
function game:enemy/spawn_enemy
# removing tags
tag @e[type=marker] remove temp
tag @e[type=marker] remove temp2
# note: temporary_tag is removed in the spawn function.

# Particles and sound
particle minecraft:campfire_signal_smoke ~ ~ ~ 0 0 0 1 20
playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.6
playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.75



# cooldown
function game:enemy/volition/mob_spawner/set_cooldown