##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_8] add unlocked
tag @e[type=minecraft:marker,tag=area_8,sort=random,limit=2] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon minecraft:witch 5111 90 -32 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Ravenna"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 5112 91 -31 loot game:shop_items/stats/looting
scoreboard players set @e[type=minecraft:item,x=5112,y=91,z=-31,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 100
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 5112 91 -30 loot game:shop_items/stats/looting
scoreboard players set @e[type=minecraft:item,x=5112,y=91,z=-30,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 100
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 5112 91 -29 loot game:shop_items/utilities/treasure_zombie
scoreboard players set @e[type=minecraft:item,x=5112,y=91,z=-29,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 120
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item






##Upgrade
execute positioned 5107 93.25 -15 run function game:mechanics/upgrade/create/metal_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon minecraft:marker 5125 90 -34 {Tags:["doorway","die_between_games","east_west","boss_door","pug_golem_fight","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 500
execute positioned 5125 90 -34 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment

summon minecraft:marker 5104 90 4 {Tags:["doorway","die_between_games","east_west","boss_door","pug_golem_fight","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 750
execute positioned 5104 90 4 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment


tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1