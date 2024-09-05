##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_5b] add unlocked


##Shops
summon minecraft:vindicator 3111 79 154 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Jill"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3116 80 156 loot game:crossbow/nature
data merge entity @e[type=minecraft:item,x=3116,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:7,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3116,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
scoreboard players set @e[type=minecraft:item,x=3116,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3114 80 156 loot game:crossbow/darkness
data merge entity @e[type=minecraft:item,x=3114,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:8,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3114,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
scoreboard players set @e[type=minecraft:item,x=3114,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3112 80 156 loot game:crossbow/air
data merge entity @e[type=minecraft:item,x=3112,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:4,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3112,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
scoreboard players set @e[type=minecraft:item,x=3112,y=80,z=156,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


return 1