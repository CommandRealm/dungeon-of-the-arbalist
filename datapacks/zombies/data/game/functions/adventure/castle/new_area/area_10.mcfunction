##Called when area_2 is opened

tag @e[type=marker,tag=area_10] add unlocked
tag @e[type=marker,tag=area_10,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy

##Upgrade
execute positioned 4978 81.25 56 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute as @e[type=area_effect_cloud,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


##Marking doorways.
summon area_effect_cloud 4984 79 62 {Tags:["doorway","die_between_games","boss_door","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 800
execute positioned 4984 79 62 as @e[type=area_effect_cloud,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


summon witch 5000 79 49 {PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:11,Duration:10000,Amplifier:126,ShowParticles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Genevieve","color":"gold","bold":true}]'}


loot spawn 4998 80 46 loot game:shop_items/stats/speed
scoreboard players set @e[type=item,x=4998,y=80,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 4999 80 46 loot game:shop_items/stats/speed
scoreboard players set @e[type=item,x=4999,y=80,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 90
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item

loot spawn 5000 80 46 loot game:shop_items/stats/quiver
scoreboard players set @e[type=item,x=5000,y=80,z=46,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}}] item_price 95
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item


tag @e[type=area_effect_cloud,tag=doorway] add raycast

##Updating name
execute as @e[type=area_effect_cloud,tag=doorway] at @s run function game:door/update_name

##Sound
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.5
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.67
kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @a[tag=playing] tripwire_hook

##updating objective
scoreboard players set @a[tag=playing] objective 3
execute as @a[tag=playing,gamemode=adventure] at @s run function game:adventure/new_objective