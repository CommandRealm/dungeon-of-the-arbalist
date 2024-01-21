##Called when area_2 is opened

tag @e[type=marker,tag=area_6] add unlocked
tag @e[type=marker,tag=area_6,sort=random,limit=8] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon vindicator 3105 70 116 {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Liam","color":"gold","bold":true}]'}





forceload add 3236 189 3241 211
clone 3236 63 189 3242 68 195 3157 71 190


loot spawn 3104 71 115 loot game:crossbow/metal
data merge entity @e[type=item,x=3104,y=71,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:9,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3104,y=71,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 100
scoreboard players set @e[type=item,x=3104,y=71,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item


loot spawn 3104 71 114 loot game:crossbow/ice
data merge entity @e[type=item,x=3104,y=71,z=114,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:5,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3104,y=71,z=114,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 90
scoreboard players set @e[type=item,x=3104,y=71,z=114,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3104 71 113 loot game:crossbow/fire
data merge entity @e[type=item,x=3104,y=71,z=113,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:1,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3104,y=71,z=113,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 90
scoreboard players set @e[type=item,x=3104,y=71,z=113,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3108 71 116 loot game:shop_items/stats/quiver
scoreboard players set @e[type=item,x=3108,y=71,z=116,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 80
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3107 71 116 loot game:shop_items/stats/revive
scoreboard players set @e[type=item,x=3107,y=71,z=116,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 75
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

summon vindicator 3150 72 125 {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Charlotte","color":"gold","bold":true}]'}

loot spawn 3148 73 124 loot game:shop_items/utilities/throwable_tnt
scoreboard players set @e[type=item,x=3148,y=73,z=124,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 75
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3148 73 125 loot game:shop_items/utilities/treasure_magnet
scoreboard players set @e[type=item,x=3148,y=73,z=125,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 65
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3149 73 126 loot game:shop_items/utilities/rabbits_foot
scoreboard players set @e[type=item,x=3149,y=73,z=126,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 80
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item

loot spawn 3149 73 127 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=3149,y=73,z=128,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 90
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item





##Upgrade (this is in 2b but needed to be visible before 2b is opened.)
execute positioned 3165 73 122 run function game:mechanics/upgrade/create/water_upgrade_spot
execute positioned 3130 69.5 102 run function game:mechanics/upgrade/create/earth_upgrade_spot

execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon marker 3105 69 98 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 100
execute positioned 3105 69 98 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


summon marker 3145.0 71 104 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 50
execute positioned 3145.0 71 104 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 3160 73 113 {Tags:["doorway","die_between_games","key_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 3160 73 113 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 3058 70 109 {Tags:["doorway","die_between_games","key_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 3058 70 109 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 3160 72 192 {Tags:["doorway","die_between_games","key_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 3160 72 192 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


execute if block 3082 71 129 dark_oak_planks unless entity @e[type=area_effect_cloud,x=3082,y=71,z=129,distance=..5] run summon marker 3082 71 129 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute if block 3082 71 129 dark_oak_planks as @e[type=marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment
##Marking doorways.
execute if block 3034 70 154 minecraft:spruce_planks unless entity @e[type=marker,tag=doorway,x=3034,y=70,z=154.0,distance=..5] run summon marker 3034 70 154.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 500
execute if block 3034 70 154 minecraft:spruce_planks as @e[type=marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment


summon marker 3160 72 168 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 700
execute positioned 3160 72 168 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name
