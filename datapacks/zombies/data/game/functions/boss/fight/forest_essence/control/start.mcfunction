##Called to start the control.

##Removing tag if somehow one had it
tag @e[tag=forest_essence_controlled] remove forest_essence_controlled

##If there is a mob in the boss room, tag it.
execute at @e[type=area_effect_cloud,tag=generation_marker,x=2000,y=66,z=0,distance=..15,limit=1,sort=nearest] positioned ~-16 ~-15 ~-16 run tag @e[tag=enemy,tag=!boss,dx=31,dy=31,dz=31,limit=1,sort=random] add forest_essence_controlled
execute unless entity @e[type=marker,tag=boss_room_spawnpoint,scores={spawn_delay=0..}] unless entity @e[tag=forest_essence_controlled] run function game:boss/fight/spawn_enemy
execute unless entity @e[tag=forest_essence_controlled] at @e[type=area_effect_cloud,tag=generation_marker,x=2000,y=66,z=0,distance=..15,limit=1,sort=nearest] positioned ~-16 ~-15 ~-16 run tag @e[tag=enemy,tag=!boss,dx=31,dy=31,dz=31,limit=1,sort=random] add forest_essence_controlled
tag @e[tag=forest_essence_controlled] add boss

##Buffs
effect give @e[tag=forest_essence_controlled,type=!skeleton] speed 1000000 0 true
effect give @e[tag=forest_essence_controlled] strength 1000000 0 true
data modify entity @e[tag=forest_essence_controlled,limit=1,sort=arbitrary] Glowing set value 1b
attribute @e[tag=forest_essence_controlled,limit=1,sort=arbitrary] generic.knockback_resistance base set 0.5
##effect give @e[tag=forest_essence_controlled] strength 1000000 0 true

##Sound
execute at @e[tag=forest_essence_controlled] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 0.75
execute at @e[tag=forest_essence_controlled] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 0.5


scoreboard players set $attack boss 2147483647