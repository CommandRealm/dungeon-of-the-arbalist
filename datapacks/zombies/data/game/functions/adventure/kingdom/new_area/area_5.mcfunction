##Called when area_2 is opened

tag @e[type=marker,tag=area_5] add unlocked
tag @e[type=marker,tag=area_5,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy


##Shops
summon vindicator 3046 72 175 {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Rich","color":"gold","bold":true}]'}

loot spawn 3045 73.5 175 loot game:shop_items/stats/looting
scoreboard players set @e[type=item,x=3045,y=73.5,z=175,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 140
scoreboard players set @e[type=item,x=3045,y=73.5,z=175,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item









##Upgrade (this is in 2b but needed to be visible before 2b is opened.)
execute positioned 3075 63.5 194 run function game:mechanics/upgrade/create/water_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon marker 3108 79 150 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 200
execute positioned 3108 79 150 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


summon marker 3089 90 182 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 200
execute positioned 3089 90 182 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment

summon marker 3070 90 157 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 350
execute positioned 3070 90 157 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


execute if block 3082 71 129 dark_oak_planks unless entity @e[type=area_effect_cloud,x=3082,y=71,z=129,distance=..5] run summon marker 3082 71 129 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 500
execute if block 3082 71 129 dark_oak_planks as @e[type=marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment

tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name

