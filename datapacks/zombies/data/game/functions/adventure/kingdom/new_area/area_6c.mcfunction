##Called when area_6c is opened

tag @e[type=marker,tag=area_6c] add unlocked




##Shops
summon vindicator 3139 71.5 100 {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Henry","color":"gold","bold":true}]'}

loot spawn 3140 72 100 loot game:shop_items/stats/speed
scoreboard players set @e[type=item,x=3140,y=72,z=100,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 135
scoreboard players set @e[type=item,x=3140,y=72,z=100,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}}] at @s run function game:shops/initialize_item



