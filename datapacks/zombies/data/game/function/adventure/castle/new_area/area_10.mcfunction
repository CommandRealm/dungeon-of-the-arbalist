##Called when area_2 is opened

tag @e[type=minecraft:marker,tag=area_10] add unlocked
tag @e[type=minecraft:marker,tag=area_10,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy

##Upgrade
execute positioned 4978 81.25 56 run function game:mechanics/upgrade/create/fire_upgrade_spot
execute as @e[type=minecraft:marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot


##Marking doorways.
summon minecraft:marker 4984 79 62 {Tags:["doorway","die_between_games","boss_door","openable"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 800
execute positioned 4984 79 62 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment


summon minecraft:witch 5000 79 49 {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Genevieve"}',active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}


loot spawn 4998 80 46 loot game:shop_items/stats/speed
scoreboard players set @e[type=minecraft:item,x=4998,y=80,z=46,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 4999 80 46 loot game:shop_items/stats/speed
scoreboard players set @e[type=minecraft:item,x=4999,y=80,z=46,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 90
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item

loot spawn 5000 80 46 loot game:shop_items/stats/quiver
scoreboard players set @e[type=minecraft:item,x=5000,y=80,z=46,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] item_price 95
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run function game:shops/initialize_item


tag @e[type=minecraft:marker,tag=doorway] add raycast

##Updating name
execute as @e[type=minecraft:marker,tag=doorway] at @s run function game:door/update_name

##Sound
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.5
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 0.67
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @a[tag=playing] minecraft:tripwire_hook

##updating objective
scoreboard players set @a[tag=playing] objective 3
execute as @a[gamemode=adventure,tag=playing] at @s run function game:adventure/new_objective
return 1