##Called to summon the shop

kill @e[type=minecraft:pillager,x=0,y=66,z=0,distance=..500,tag=shopkeeper]
kill @e[type=minecraft:item,x=0,y=66,z=0,distance=..500,tag=shop_item]
summon minecraft:pillager 8 82 -28.0 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games","tutorial_shopkeeper"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Bertram"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 7 83 -30 loot game:shop_items/utilities/shield
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-30,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 3
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-30,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 7 83 -29 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-29,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 5
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-29,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


loot spawn 7 83 -28 loot game:shop_items/health_potion
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-28,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 5
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-28,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 7 83 -27 loot game:shop_items/utilities/treasure_magnet
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-27,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 8
scoreboard players set @e[type=minecraft:item,x=7,y=83,z=-27,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

return 1