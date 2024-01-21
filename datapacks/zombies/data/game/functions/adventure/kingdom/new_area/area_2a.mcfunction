##Called when area_2 is opened

tag @e[type=marker,tag=area_2a] add unlocked
tag @e[type=marker,tag=area_2a,sort=random,limit=4] add temporary_tag
function game:enemy/spawn_enemy


##Shops
execute unless score $difficulty settings matches 5.. run summon vindicator 3034 91 14 {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games"],CustomNameVisible:1b,CustomName:'[{"text":"Kit","color":"gold","bold":true}]'}

loot spawn 3034 92.5 15 loot game:shop_items/stats/health
scoreboard players set @e[type=item,x=3034,y=92,z=15,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_price 125
scoreboard players set @e[type=item,x=3034,y=92,z=15,distance=..5,limit=1,sort=nearest,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] item_quantity 2147483647
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},tag=!initialized] at @s run function game:shops/initialize_item









##Upgrade (this is in 2b but needed to be visible before 2b is opened.)
execute positioned 3049 95.5 19 run function game:mechanics/upgrade/create/ice_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
summon marker 3039 92 21 {Tags:["doorway","die_between_games","key_door","raycast","lookout_door"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 3039 92 21 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment




tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name

