schedule function game:default/generation/door/tag_doors 2t

schedule function game:default/generation/door/dark/tag_doors 3t

schedule function game:default/generation/door/boss/tag_doors 3t

##Final generation touches. (like color of inner doors.)
fill 2040 62 55 1958 69 55 dark_oak_planks replace spruce_planks
fill 2040 62 55 1958 69 55 stripped_dark_oak_wood replace stripped_spruce_wood
fill 2040 62 55 1958 69 55 spruce_wood replace stripped_dark_oak_log
fill 2040 62 55 1958 69 55 lapis_block replace gold_block

fill 1944 62 40 1944 69 -41 dark_oak_planks replace spruce_planks
fill 1944 62 40 1944 69 -41 stripped_dark_oak_wood replace stripped_spruce_wood
fill 1944 62 40 1944 69 -41 spruce_wood replace stripped_dark_oak_log
fill 1944 62 40 1944 69 -41 lapis_block replace gold_block

fill 1959 62 -56 2040 69 -56 dark_oak_planks replace spruce_planks
fill 1959 62 -56 2040 69 -56 stripped_dark_oak_wood replace stripped_spruce_wood
fill 1959 62 -56 2040 69 -56 spruce_wood replace stripped_dark_oak_log
fill 1959 62 -56 2040 69 -56 lapis_block replace gold_block

fill 2055 62 -41 2055 69 40 dark_oak_planks replace spruce_planks
fill 2055 62 -41 2055 69 40 stripped_dark_oak_wood replace stripped_spruce_wood
fill 2055 62 -41 2055 69 40 spruce_wood replace stripped_dark_oak_log
fill 2055 62 -41 2055 69 40 lapis_block replace gold_block


##Boss door
fill 1981 62 -4 1981 69 4 polished_blackstone replace spruce_planks
fill 1981 62 -4 1981 69 4 blackstone replace stripped_spruce_wood
fill 1981 62 -4 1981 69 4 chiseled_polished_blackstone replace stripped_dark_oak_log
fill 1981 62 -4 1981 69 4 redstone_block replace gold_block

fill 1996 69 -19 2003 62 -19 polished_blackstone replace spruce_planks
fill 1996 69 -19 2003 62 -19 blackstone replace stripped_spruce_wood
fill 1996 69 -19 2003 62 -19 chiseled_polished_blackstone replace stripped_dark_oak_log
fill 1996 69 -19 2003 62 -19 redstone_block replace gold_block

fill 2018 69 -5 2018 62 3 polished_blackstone replace spruce_planks
fill 2018 69 -5 2018 62 3 blackstone replace stripped_spruce_wood
fill 2018 69 -5 2018 62 3 chiseled_polished_blackstone replace stripped_dark_oak_log
fill 2018 69 -5 2018 62 3 redstone_block replace gold_block

fill 2004 69 18 1996 62 18 polished_blackstone replace spruce_planks
fill 2004 69 18 1996 62 18 blackstone replace stripped_spruce_wood
fill 2004 69 18 1996 62 18 chiseled_polished_blackstone replace stripped_dark_oak_log
fill 2004 69 18 1996 62 18 redstone_block replace gold_block


##Making gray walls if we're on the edge
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 stone replace spruce_planks
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 andesite replace stripped_spruce_wood
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 polished_andesite replace stripped_dark_oak_log
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 iron_block replace gold_block
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 air replace #minecraft:handle

##Making gray walls if we're on the edge
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 stone replace spruce_planks
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 andesite replace stripped_spruce_wood
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 polished_andesite replace stripped_dark_oak_log
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 iron_block replace gold_block
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 air replace #minecraft:handle

execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 stone replace spruce_planks
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 andesite replace stripped_spruce_wood
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 polished_andesite replace stripped_dark_oak_log
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 iron_block replace gold_block
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-5 ~-18 ~26 ~4 air replace #minecraft:handle

execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 stone replace spruce_planks
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 andesite replace stripped_spruce_wood
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 polished_andesite replace stripped_dark_oak_log
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 iron_block replace gold_block
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-5 air replace #minecraft:handle

# finding the andesite walls (this is for plague zombie bois so they cant camp in the corridors.)
schedule function game:default/generation/door/create_edge_doors 3t

execute at @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] run fill ~ ~-23 ~ ~ ~-16 ~ air


##Tagging the boss room
tag @e[type=area_effect_cloud,tag=generation_marker,x=2000,y=60,z=0,distance=..10,sort=nearest,limit=1] add boss_room
execute at @e[type=area_effect_cloud,tag=boss_room] positioned ~-16 ~-15 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31] add boss_room_spawnpoint



##summoning mapping aec
function game:shops/items/map/summon_entities

##Lowing the count of some of the area effect clouds.
execute store result score $calculate calculate if entity @e[type=marker,tag=zombie_spawnpoint]
execute if score $calculate calculate matches 1000.. at @e[type=area_effect_cloud,tag=generation_marker,tag=!boss_room] positioned ~-16 ~-15 ~-16 run kill @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,sort=random,limit=12]