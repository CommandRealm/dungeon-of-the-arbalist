##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_2] add unlocked
tag @e[type=minecraft:marker,tag=area_2,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy


##Shops
execute unless score $starting_players game matches 1 unless score $difficulty settings matches 5.. run summon minecraft:vindicator 3017 78 87 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Jacquelin"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3018 79.5 87 loot game:shop_items/stats/revive
scoreboard players set @e[type=minecraft:item,x=3018,y=79,z=87,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
scoreboard players set @e[type=minecraft:item,x=3018,y=79,z=87,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


##Resetting the door
forceload add 2941 136 2967 136
execute unless entity @e[type=minecraft:marker,tag=area_3,tag=unlocked] run clone 2956 79 133 2967 88 142 3017 76 98

##Upgrade
execute positioned 3032 78 27 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute positioned 2993 82 78 run function game:mechanics/upgrade/create/metal_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
execute if block 3024 77 102 minecraft:stripped_spruce_wood unless entity @e[type=minecraft:marker,x=3024,y=77,z=102,distance=..5,tag=doorway] run summon minecraft:marker 3022 77 104 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 400
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

summon minecraft:marker 3023 76 22 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 250
execute positioned 3023 76 22 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment




tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


return 1