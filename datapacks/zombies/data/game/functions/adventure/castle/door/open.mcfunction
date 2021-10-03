##Called when a door opens on the castle map.

##Particles
execute if entity @s[tag=east_west,tag=default_door] run particle block spruce_planks 4993 89 23 0.75 2 1.5 0 100
execute if entity @s[tag=north_south,tag=default_door] run particle block spruce_planks 4993 89 23 1.5 2 0.75 0 100

execute if entity @s[tag=east_west,tag=key_door] run particle block dark_oak_planks 4993 89 23 0.75 2 1.5 0 100
execute if entity @s[tag=north_south,tag=key_door] run particle block dark_oak_planks 4993 89 23 1.5 2 0.75 0 100

execute if entity @s[tag=east_west,tag=boss_door] run particle block blackstone 4993 89 23 0.75 2 1.5 0 100
execute if entity @s[tag=north_south,tag=boss_door] run particle block blackstone 4993 89 23 1.5 2 0.75 0 100



##Specific doors




##Area2
execute if entity @s[x=4993,y=89,z=23,distance=..5] run clone 4993 81 24 4994 85 26 4993 88 22
execute if entity @s[x=4993,y=89,z=23,distance=..5] run function game:adventure/castle/new_area/area_2
execute if entity @s[x=4980,y=100,z=39,distance=..5] run clone 4981 92 45 4982 97 47 4980 99 38
execute if entity @s[x=4980,y=100,z=39,distance=..5] run function game:adventure/castle/new_area/area_4

##Area 3
execute if entity @s[x=4968,y=94,z=14,distance=..5] run clone 4967 84 14 4969 89 16 4967 93 13
execute if entity @s[x=4968,y=94,z=14,distance=..5] unless entity @e[tag=marker,tag=area_3,tag=unlocked] run function game:adventure/castle/new_area/area_3
execute if entity @s[x=4980,y=94,z=30,distance=..5] run clone 4975 84 30 4977 90 32 4979 93 29
execute if entity @s[x=4980,y=94,z=30,distance=..5] unless entity @e[tag=marker,tag=area_3,tag=unlocked] run function game:adventure/castle/new_area/area_3

##area 4
execute if entity @s[x=4963,y=100,z=54,distance=..5] run clone 4964 88 53 4966 93 54 4962 99 53
execute if entity @s[x=4963,y=100,z=54,distance=..5] run function game:adventure/castle/new_area/area_5


##Opening 6
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5007,y=88,z=23,distance=..5] run clone 5006 79 20 5007 84 22 5006 88 22
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5007,y=88,z=23,distance=..5] run function game:adventure/castle/new_area/area_6

##Opening 7
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5039,y=89,z=24,distance=..5] run clone 5038 79 20 5039 84 22 5038 88 23
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5039,y=89,z=24,distance=..5] run function game:adventure/castle/new_area/area_7

##Opening 8
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5089,y=90,z=-23,distance=..5] run clone 5088 80 -26 5089 85 -24 5088 89 -24
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5089,y=90,z=-23,distance=..5] run function game:adventure/castle/new_area/area_8

##Opening 9
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] run clone 5122 81 -35 5124 87 -33 5124 89 -35
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] if block 5104 90 4 polished_blackstone run tag @e[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] remove boss_door
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] if block 5104 90 4 polished_blackstone run tag @e[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] add default_door
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] if block 5104 90 4 polished_blackstone run function game:adventure/castle/new_area/area_9
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] if block 5104 90 4 polished_blackstone run clone 5103 81 5 5105 86 7 5103 89 3


execute if entity @s[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] run clone 5103 81 1 5105 86 3 5103 89 3
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] if block 5125 90 -34 polished_blackstone run tag @e[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] remove boss_door
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] if block 5125 90 -34 polished_blackstone run tag @e[type=area_effect_cloud,tag=doorway,x=5125,y=90,z=-34,distance=..5] add default_door
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] if block 5125 90 -34 polished_blackstone run function game:adventure/castle/new_area/area_9
execute if entity @s[type=area_effect_cloud,tag=doorway,x=5104,y=90,z=4,distance=..5] if block 5125 90 -34 polished_blackstone run clone 5126 81 -35 5128 87 -33 5124 89 -35

##area 9b
execute if entity @s[x=5135,y=88,z=13,distance=..5] run clone 5136 78 12 5137 82 13 5135 87 13
execute if entity @s[x=5135,y=88,z=13,distance=..5] run function game:adventure/castle/new_area/area_9b

##area 10
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=37,distance=..5] run clone 4985 69 35 4987 75 36 4983 78 36
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=37,distance=..5] run function game:adventure/castle/new_area/area_10

##area 11 (BOSS)
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=62,distance=..5] run fill 4983 79 62 4985 83 62 nether_bricks replace polished_blackstone
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=62,distance=..5] run fill 4983 79 62 4985 83 62 magma_block replace blackstone
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=62,distance=..5] run fill 4983 79 62 4985 83 62 red_nether_bricks replace chiseled_polished_blackstone
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=62,distance=..5] run scoreboard players set $opened boss 1
execute if entity @s[type=area_effect_cloud,tag=doorway,x=4984,y=79,z=62,distance=..5] run function game:adventure/castle/new_area/area_11






##Sound
execute if entity @s[tag=default_door] run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 1
execute if entity @s[tag=default_door] run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.75

execute if entity @s[tag=boss_door] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1
execute if entity @s[tag=boss_door] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.75
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 0.5

##Removing tag
kill @s[x=4984,y=79,z=62,distance=1..]
kill @e[type=armor_stand,distance=..7,tag=door_text_marker,sort=nearest,limit=2]
kill @e[type=area_effect_cloud,distance=..7,tag=door_text,sort=nearest,limit=2]

execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_shulker_box"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $starting_players game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]