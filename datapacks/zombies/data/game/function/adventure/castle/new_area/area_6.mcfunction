##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_6] add unlocked
tag @e[type=minecraft:marker,tag=area_6,sort=random,limit=2] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon minecraft:witch 5019 89 34 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Kleith"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 5017 90 33 loot game:shop_items/stats/health
scoreboard players set @e[type=minecraft:item,x=5017,y=90,z=33,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 5017 90 34 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=5017,y=90,z=34,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 80
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 5017 90 35 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=5018,y=90,z=35,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 80
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


loot spawn 5019 90 38 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=5019,y=90,z=38,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 80
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item






##Upgrade
execute positioned 5016 90.0 44 run function game:mechanics/upgrade/create/ice_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon minecraft:marker 5039 89 24 {Tags:["doorway","die_between_games","east_west","default_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 250
execute positioned 5039 89 24 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment



tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name


##called because we opened the door with a key
##Sound
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.5
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.67

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @a[tag=playing] minecraft:tripwire_hook

##updating objective
scoreboard players set @a[tag=playing] objective 1
execute as @a[gamemode=adventure,tag=playing] at @s run function game:adventure/new_objective

return 1