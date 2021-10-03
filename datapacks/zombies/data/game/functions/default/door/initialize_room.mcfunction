##Called when this room just opened or we spawned in the room.

tag @s add opened


##Finding upgrade spots.
execute unless entity @s[tag=selected_spawnpoint] positioned ~-16 ~-16 ~-16 as @e[type=area_effect_cloud,tag=upgrade_spot,dx=31,dy=31,dz=31,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot
execute if entity @s[tag=selected_spawnpoint] positioned ~-16 ~-16 ~-16 run kill @e[type=area_effect_cloud,tag=upgrade_spot,dx=31,dy=31,dz=31,tag=inactive]


##If this room has a shop, set it up.
execute positioned ~-16 ~-16 ~-16 as @e[type=area_effect_cloud,dx=31,dy=31,dz=31,tag=shopkeeper_point] at @s run function game:default/shop_generation/shop_chance

##Initializing minibosses.
execute positioned ~-16 ~-15 ~-16 as @e[type=area_effect_cloud,dx=31,dy=31,dz=31,tag=miniboss_spawn,limit=1] at @s run function game:enemy/summon_miniboss

##Summoning enemies.
function game:enemy/spawn_enemy