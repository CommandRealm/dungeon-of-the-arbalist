##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_9] add unlocked
tag @e[type=minecraft:marker,tag=area_9,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon minecraft:vindicator 3013 92 174 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"James"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3014 93 174 loot game:shop_items/stats/damage
scoreboard players set @e[type=minecraft:item,x=3014,y=93,z=174,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 135
scoreboard players set @e[type=minecraft:item,x=3014,y=93,z=174,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


summon minecraft:vindicator 3018 93 205 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Harper"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}


loot spawn 3022 94 205 loot game:shop_items/stats/speed
scoreboard players set @e[type=minecraft:item,x=3022,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 75
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3021 94 205 loot game:shop_items/stats/health
scoreboard players set @e[type=minecraft:item,x=3021,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3020 94 205 loot game:shop_items/utilities/splash_regen_potion
scoreboard players set @e[type=minecraft:item,x=3020,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 110
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3019 94 205 loot game:shop_items/utilities/splash_regen_potion
scoreboard players set @e[type=minecraft:item,x=3019,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 110
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item



summon minecraft:vindicator 3046 93 205 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Elijah"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3050 94 205 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=3050,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 100
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3049 94 205 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=3049,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 100
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3048 94 205 loot game:shop_items/fishing_rod
scoreboard players set @e[type=minecraft:item,x=3048,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3047 94 205 loot game:shop_items/throwable_tnt
scoreboard players set @e[type=minecraft:item,x=3047,y=94,z=205,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 50
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

##Upgrade
execute positioned 3032 78 27 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute positioned 2993 82 78 run function game:mechanics/upgrade/create/metal_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon minecraft:marker 3011 92 194 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 20
execute positioned 3011 92 194 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment



execute if block 3035 92 170 minecraft:oak_planks unless entity @e[type=minecraft:area_effect_cloud,x=3035.0,y=92,z=170,distance=..5,tag=doorway] run summon minecraft:marker 3035.0 92 170 {Tags:["doorway","die_between_games","default_door","raycast","needs_adjustments"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 200
execute positioned 3035.0 92 170 as @e[type=minecraft:marker,tag=doorway,tag=needs_adjustments,sort=nearest,limit=1] at @s run function game:door/get_price_increment
tag @e[type=minecraft:marker,tag=doorway,tag=needs_adjustments,sort=nearest,limit=1] remove needs_adjustments



tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1