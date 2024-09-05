schedule function game:default/generation/door/tag_doors 2t

schedule function game:default/generation/door/dark/tag_doors 3t

schedule function game:default/generation/door/boss/tag_doors 3t

##Final generation touches. (like color of inner doors.)
fill 2040 62 55 1958 69 55 minecraft:dark_oak_planks replace minecraft:spruce_planks
fill 2040 62 55 1958 69 55 minecraft:stripped_dark_oak_wood replace minecraft:stripped_spruce_wood
fill 2040 62 55 1958 69 55 minecraft:spruce_wood replace minecraft:stripped_dark_oak_log
fill 2040 62 55 1958 69 55 minecraft:lapis_block replace minecraft:gold_block

fill 1944 62 40 1944 69 -41 minecraft:dark_oak_planks replace minecraft:spruce_planks
fill 1944 62 40 1944 69 -41 minecraft:stripped_dark_oak_wood replace minecraft:stripped_spruce_wood
fill 1944 62 40 1944 69 -41 minecraft:spruce_wood replace minecraft:stripped_dark_oak_log
fill 1944 62 40 1944 69 -41 minecraft:lapis_block replace minecraft:gold_block

fill 1959 62 -56 2040 69 -56 minecraft:dark_oak_planks replace minecraft:spruce_planks
fill 1959 62 -56 2040 69 -56 minecraft:stripped_dark_oak_wood replace minecraft:stripped_spruce_wood
fill 1959 62 -56 2040 69 -56 minecraft:spruce_wood replace minecraft:stripped_dark_oak_log
fill 1959 62 -56 2040 69 -56 minecraft:lapis_block replace minecraft:gold_block

fill 2055 62 -41 2055 69 40 minecraft:dark_oak_planks replace minecraft:spruce_planks
fill 2055 62 -41 2055 69 40 minecraft:stripped_dark_oak_wood replace minecraft:stripped_spruce_wood
fill 2055 62 -41 2055 69 40 minecraft:spruce_wood replace minecraft:stripped_dark_oak_log
fill 2055 62 -41 2055 69 40 minecraft:lapis_block replace minecraft:gold_block


##Boss door
fill 1981 62 -4 1981 69 4 minecraft:polished_blackstone replace minecraft:spruce_planks
fill 1981 62 -4 1981 69 4 minecraft:blackstone replace minecraft:stripped_spruce_wood
fill 1981 62 -4 1981 69 4 minecraft:chiseled_polished_blackstone replace minecraft:stripped_dark_oak_log
fill 1981 62 -4 1981 69 4 minecraft:redstone_block replace minecraft:gold_block

fill 1996 69 -19 2003 62 -19 minecraft:polished_blackstone replace minecraft:spruce_planks
fill 1996 69 -19 2003 62 -19 minecraft:blackstone replace minecraft:stripped_spruce_wood
fill 1996 69 -19 2003 62 -19 minecraft:chiseled_polished_blackstone replace minecraft:stripped_dark_oak_log
fill 1996 69 -19 2003 62 -19 minecraft:redstone_block replace minecraft:gold_block

fill 2018 69 -5 2018 62 3 minecraft:polished_blackstone replace minecraft:spruce_planks
fill 2018 69 -5 2018 62 3 minecraft:blackstone replace minecraft:stripped_spruce_wood
fill 2018 69 -5 2018 62 3 minecraft:chiseled_polished_blackstone replace minecraft:stripped_dark_oak_log
fill 2018 69 -5 2018 62 3 minecraft:redstone_block replace minecraft:gold_block

fill 2004 69 18 1996 62 18 minecraft:polished_blackstone replace minecraft:spruce_planks
fill 2004 69 18 1996 62 18 minecraft:blackstone replace minecraft:stripped_spruce_wood
fill 2004 69 18 1996 62 18 minecraft:chiseled_polished_blackstone replace minecraft:stripped_dark_oak_log
fill 2004 69 18 1996 62 18 minecraft:redstone_block replace minecraft:gold_block


##Making gray walls if we're on the edge
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 minecraft:stone replace minecraft:spruce_planks
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 minecraft:andesite replace minecraft:stripped_spruce_wood
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 minecraft:polished_andesite replace minecraft:stripped_dark_oak_log
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 minecraft:iron_block replace minecraft:gold_block
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $right generation positioned ~ 42 ~ run fill ~-4 ~20 ~19 ~4 ~26 ~17 minecraft:air replace #minecraft:handle

##Making gray walls if we're on the edge
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 minecraft:stone replace minecraft:spruce_planks
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 minecraft:andesite replace minecraft:stripped_spruce_wood
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 minecraft:polished_andesite replace minecraft:stripped_dark_oak_log
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 minecraft:iron_block replace minecraft:gold_block
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_z = $left generation positioned ~ 42 ~ run fill ~-4 ~20 ~-19 ~3 ~26 ~-17 minecraft:air replace #minecraft:handle

execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 minecraft:stone replace minecraft:spruce_planks
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 minecraft:andesite replace minecraft:stripped_spruce_wood
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 minecraft:polished_andesite replace minecraft:stripped_dark_oak_log
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-4 ~-18 ~26 ~4 minecraft:iron_block replace minecraft:gold_block
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $down generation positioned ~ 42 ~ run fill ~-20 ~20 ~-5 ~-18 ~26 ~4 minecraft:air replace #minecraft:handle

execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 minecraft:stone replace minecraft:spruce_planks
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 minecraft:andesite replace minecraft:stripped_spruce_wood
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 minecraft:polished_andesite replace minecraft:stripped_dark_oak_log
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-4 minecraft:iron_block replace minecraft:gold_block
execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s if score @s grid_x = $up generation positioned ~ 42 ~ run fill ~19 ~20 ~4 ~17 ~26 ~-5 minecraft:air replace #minecraft:handle

# finding the andesite walls (this is for plague zombie bois so they cant camp in the corridors.)
schedule function game:default/generation/door/create_edge_doors 3t

execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] run fill ~ ~-23 ~ ~ ~-16 ~ minecraft:air


##Tagging the boss room
tag @e[type=minecraft:area_effect_cloud,x=2000,y=60,z=0,distance=..10,tag=generation_marker,sort=nearest,limit=1] add boss_room
execute at @e[type=minecraft:area_effect_cloud,tag=boss_room] positioned ~-16 ~-15 ~-16 run tag @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=zombie_spawnpoint] add boss_room_spawnpoint



##summoning mapping aec
function game:shops/items/map/summon_entities

##Lowing the count of some of the area effect clouds.
execute store result score $calculate calculate if entity @e[type=minecraft:marker,tag=zombie_spawnpoint]
execute if score $calculate calculate matches 1000.. at @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=!boss_room] positioned ~-16 ~-15 ~-16 run kill @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=zombie_spawnpoint,sort=random,limit=12]
return 1