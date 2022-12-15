##Called when area_2 is opened

tag @e[type=marker,tag=area_2] add unlocked
tag @e[type=marker,tag=area_2,sort=random,limit=2] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon witch 4991 89 42 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Mirkha","color":"gold","bold":true}]'}

loot spawn 4993 90 44 loot game:shop_items/stats/health
scoreboard players set @e[type=item,x=4993,y=90,z=44,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4992 90 44 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=4992,y=90,z=44,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 80
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4991 90 44 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=4991,y=90,z=44,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 80
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4989 90 42 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=4989,y=90,z=42,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 80
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4989 90 41 loot game:shop_items/utilities/splash_regen_potion
scoreboard players set @e[type=item,x=4989,y=90,z=41,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 100
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item






summon witch 4974 94 6 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Millicent","color":"gold","bold":true}]'}



loot spawn 4971 95 5 loot game:shop_items/utilities/throwable_whirlpool
scoreboard players set @e[type=item,x=4971,y=95,z=5,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 60
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4972 95 5 loot game:shop_items/stats/revive
scoreboard players set @e[type=item,x=4972,y=95,z=5,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 70
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4973 95 5 loot game:shop_items/utilities/throwable_ice
scoreboard players set @e[type=item,x=4973,y=95,z=5,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 30
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4975 95 8 loot game:shop_items/utilities/treasure_magnet
scoreboard players set @e[type=item,x=4975,y=95,z=8,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 70
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


##Upgrade
execute positioned 4977 95.67 22 run function game:mechanics/upgrade/create/lightning_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon marker 4968 94 14 {Tags:["doorway","die_between_games","east_west","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 120
execute positioned 4968 94 14 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 4980 94 30 {Tags:["doorway","die_between_games","east_west","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 90
execute positioned 4980 94 30 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 4980 100 39 {Tags:["doorway","die_between_games","east_west","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 150
execute positioned 4980 100 39 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 4984 79 37 {Tags:["doorway","die_between_games","north_south","key_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}




tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name

