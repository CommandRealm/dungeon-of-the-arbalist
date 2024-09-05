##Called to spawn ourself into the map.

##if there is no available spawnpoint, find more
execute unless entity @e[type=minecraft:area_effect_cloud,tag=possible_spawn] run function game:default/find_spawnpoints

##tagging our spawnpoint
tag @e[type=minecraft:area_effect_cloud,tag=possible_spawn,sort=random,limit=1] add selected_spawnpoint

##
execute at @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint] positioned ~-16 ~-16 ~-16 at @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=zombie_spawnpoint,sort=random,limit=1] run tp @s ~ ~ ~ facing 2000 ~ 0
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint,sort=nearest,limit=1]
execute at @s run tp @s ~ ~ ~ ~ 10

##Making sure we aren't on a magma block
execute at @s run fill ~ ~ ~ ~ ~-2 ~ minecraft:netherrack replace minecraft:magma_block

##If we're still in the void redo the spawn.
execute if entity @s[y=0,distance=..20] run tag @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint] remove selected_spawnpoint

##Tagging aec so that we know this room has been initialized.
execute as @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint,tag=!opened,sort=nearest,limit=1] at @s run function game:default/door/initialize_room
tag @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint,sort=nearest,limit=1] add opened



##removing our spawnpoints tags
tag @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint] remove possible_spawn
tag @e[type=minecraft:area_effect_cloud,tag=selected_spawnpoint] remove selected_spawnpoint


##Recall this function
execute if entity @s[y=0,distance=..20] run function game:default/spawn_self

##tag removal
tag @s remove in_generation
return 1