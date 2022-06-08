##Called to summon the shop

kill @e[type=pillager,tag=shopkeeper,x=0,y=66,z=0,distance=..500]
kill @e[type=item,tag=shop_item,x=0,y=66,z=0,distance=..500]
summon pillager 8 82 -28.0 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games","tutorial_shopkeeper"],CustomNameVisible:1b,CustomName:'[{"text":"Bertram","color":"gold","bold":true}]'}

loot spawn 7 83 -30 loot game:shop_items/utilities/shield
scoreboard players set @e[type=item,x=7,y=83,z=-30,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 3
scoreboard players set @e[type=item,x=7,y=83,z=-30,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 7 83 -29 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=7,y=83,z=-29,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 5
scoreboard players set @e[type=item,x=7,y=83,z=-29,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 7 83 -28 loot game:shop_items/health_potion
scoreboard players set @e[type=item,x=7,y=83,z=-28,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 5
scoreboard players set @e[type=item,x=7,y=83,z=-28,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 7 83 -27 loot game:shop_items/utilities/treasure_magnet
scoreboard players set @e[type=item,x=7,y=83,z=-27,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 8
scoreboard players set @e[type=item,x=7,y=83,z=-27,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item
