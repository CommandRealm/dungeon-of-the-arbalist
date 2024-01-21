##Called when we need to relocate the revive point.

execute if score $mode settings matches 0 at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=spawnable,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=1] add temporary_tag
execute if score $mode settings matches 1.. run tag @e[type=marker,tag=zombie_spawnpoint,sort=nearest,limit=1] add temporary_tag

##moving the marker
data modify entity @e[type=area_effect_cloud,tag=needs_adjustments,limit=1] Pos[0] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[0]
data modify entity @e[type=area_effect_cloud,tag=needs_adjustments,limit=1] Pos[1] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[1]
data modify entity @e[type=area_effect_cloud,tag=needs_adjustments,limit=1] Pos[2] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[2]

##moving the armor stand

data modify entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[0] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[0]
data modify entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[1] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[1]
data modify entity @e[type=armor_stand,tag=needs_adjustments,limit=1] Pos[2] set from entity @e[type=marker,tag=temporary_tag,sort=arbitrary,limit=1] Pos[2]

##Teleporting into the ground so it's like they're sitting
execute as @e[type=armor_stand,tag=needs_adjustments,limit=1] at @s run tp @s ~ ~-0.7 ~ facing entity @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker,sort=nearest,limit=1]

##Removing tag
tag @e[type=marker,tag=temporary_tag] remove temporary_tag