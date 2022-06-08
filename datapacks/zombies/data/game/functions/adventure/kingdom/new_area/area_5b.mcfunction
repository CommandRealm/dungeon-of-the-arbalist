##Called when area_2 is opened

tag @e[type=marker,tag=area_5b] add unlocked


##Shops
summon vindicator 3111 79 154 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Jill","color":"gold","bold":true}]'}

loot spawn 3116 80 156 loot game:crossbow/nature
data merge entity @e[type=item,x=3116,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:7,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3116,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
scoreboard players set @e[type=item,x=3116,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

loot spawn 3114 80 156 loot game:crossbow/darkness
data merge entity @e[type=item,x=3114,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:8,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3114,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
scoreboard players set @e[type=item,x=3114,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

loot spawn 3112 80 156 loot game:crossbow/air
data merge entity @e[type=item,x=3112,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:4,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3112,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
scoreboard players set @e[type=item,x=3112,y=80,z=156,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

