##Called when area_6c is opened

tag @e[type=minecraft:marker,tag=area_6c] add unlocked




##Shops
summon minecraft:vindicator 3139 71.5 100 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Henry"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot spawn 3140 72 100 loot game:shop_items/stats/speed
scoreboard players set @e[type=minecraft:item,x=3140,y=72,z=100,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 135
scoreboard players set @e[type=minecraft:item,x=3140,y=72,z=100,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_quantity 2147483647
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item




return 1