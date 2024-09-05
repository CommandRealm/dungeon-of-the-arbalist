##Called when area_6c is opened

tag @e[type=minecraft:marker,tag=area_6a] add unlocked
scoreboard players set @e[type=minecraft:marker,tag=area_6a] spawn_limit 2



##Shops
summon minecraft:vindicator 3169 73 113 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Henry"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3168 74 112 loot game:crossbow/lightning
data merge entity @e[type=minecraft:item,x=3168,y=74,z=112,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:6,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=112,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 110
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=112,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


loot spawn 3168 74 113 loot game:crossbow/water
data merge entity @e[type=minecraft:item,x=3168,y=74,z=115,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:2,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=115,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=115,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 3168 74 114 loot game:crossbow/earth
data merge entity @e[type=minecraft:item,x=3168,y=74,z=116,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{components:{"minecraft:custom_data":{crossbow_id:3,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}}
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=116,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 100
scoreboard players set @e[type=minecraft:item,x=3168,y=74,z=116,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 5
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

function game:enemy/cpt_tower/summon

clear @a[tag=playing] minecraft:tripwire_hook[minecraft:custom_data={key:"storage"}]

##Upgrade
execute positioned 3165 93.5 113 run function game:mechanics/upgrade/create/air_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot
return 1