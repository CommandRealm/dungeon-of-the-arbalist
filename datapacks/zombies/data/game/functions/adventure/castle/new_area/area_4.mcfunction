##Called when area_2 is opened

tag @e[type=marker,tag=area_4] add unlocked
tag @e[type=marker,tag=area_4,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy

##Shop
summon witch 4978 100 50 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11b,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Helga","color":"gold","bold":true}]'}

loot spawn 4980 101 46 loot game:crossbow/earth
data merge entity @e[type=item,x=4980,y=101,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:3,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=4980,y=101,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 110
scoreboard players set @e[type=item,x=4980,y=101,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4980 101 47 loot game:shop_items/utilities/shield
scoreboard players set @e[type=item,x=4980,y=101,z=47,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 75
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4980 101 48 loot game:shop_items/stats/damage
scoreboard players set @e[type=item,x=4980,y=101,z=48,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 70
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4978 101 52 loot game:shop_items/utilities/glowing_wave
scoreboard players set @e[type=item,x=4978,y=101,z=52,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 35
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


loot spawn 4977 101 52 loot game:shop_items/utilities/rabbits_foot
scoreboard players set @e[type=item,x=4977,y=101,z=52,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 65
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4976 101 52 loot game:crossbow/default
data merge entity @e[type=item,x=4976,y=101,z=52,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:0,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=4976,y=101,z=52,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 30
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item




##Marking doorways.
summon area_effect_cloud 4963 100 54 {Tags:["doorway","die_between_games","north_south","boss_door","raycast","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute positioned 4963 100 54 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

##Updating name
execute as @e[type=area_effect_cloud,tag=doorway] at @s run function game:door/update_name
