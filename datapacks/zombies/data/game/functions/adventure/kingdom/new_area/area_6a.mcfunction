##Called when area_6c is opened

tag @e[type=marker,tag=area_6a] add unlocked
scoreboard players set @e[type=marker,tag=area_6a] spawn_limit 2



##Shops
summon vindicator 3169 73 113 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Henry","color":"gold","bold":true}]'}

loot spawn 3168 74 112 loot game:crossbow/lightning
data merge entity @e[type=item,x=3168,y=74,z=112,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:6,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3168,y=74,z=112,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 110
scoreboard players set @e[type=item,x=3168,y=74,z=112,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item


loot spawn 3168 74 113 loot game:crossbow/water
data merge entity @e[type=item,x=3168,y=74,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:2,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3168,y=74,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
scoreboard players set @e[type=item,x=3168,y=74,z=115,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

loot spawn 3168 74 114 loot game:crossbow/earth
data merge entity @e[type=item,x=3168,y=74,z=116,distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crossbow"}}] {Item:{tag:{crossbow_id:3,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
scoreboard players set @e[type=item,x=3168,y=74,z=116,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 100
scoreboard players set @e[type=item,x=3168,y=74,z=116,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 5
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item

function game:enemy/cpt_tower/summon

clear @a[tag=playing] tripwire_hook{key:"storage"}

##Upgrade
execute positioned 3165 93.5 113 run function game:mechanics/upgrade/create/air_upgrade_spot
execute as @e[type=area_effect_cloud,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot