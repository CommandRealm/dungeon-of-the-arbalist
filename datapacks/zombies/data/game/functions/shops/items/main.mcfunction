##Main function for shop items etc.


##If there is a fishing bobber
execute if entity @e[type=fishing_bobber] run function game:shops/items/active_fishing_bobber


##If there is a dropped tnt
execute if entity @e[type=armor_stand,tag=throwable,limit=1] run function game:shops/items/throwable/active

##If we dropped a droppable item
execute as @a[tag=playing,gamemode=adventure,scores={drop=1..}] at @s run function game:shops/items/check_drop

##If a player has a map
execute if entity @a[tag=playing,gamemode=adventure,team=game,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] run function game:shops/items/map/main

##If someone is holding the magnet
execute as @a[tag=playing,gamemode=adventure,team=game,nbt={SelectedItem:{id:"minecraft:hopper"}}] at @s run function game:shops/items/use_magnet
execute as @e[type=item,nbt={Item:{tag:{treasure:1}},NoGravity:1b}] at @s unless entity @a[tag=playing,team=game,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:hopper"}},distance=..7.5] run data modify entity @s NoGravity set value 0b

##If a treasure zombie takes hurt time
execute as @e[type=skeleton,tag=treasure_zombie,nbt={HurtTime:9s}] at @s run function game:shops/items/treasure_zombie_hurt

##If there is a whirlpool
execute if entity @e[type=armor_stand,tag=whirlpool] run function game:shops/items/whirlpool/main

# if player has a rope and is in lava
execute as @a[tag=playing,team=game,tag=mechanics,nbt={Inventory:[{id:"minecraft:lead",tag:{shop_item:1b}}]}] at @s if block ~ ~ ~ lava run function game:shops/items/use_rope

# if we have gas mask equipped
execute as @a[tag=playing,tag=has_gas_mask] at @s run function game:shops/items/gas_mask/main

# if we use a shield
execute as @a[tag=playing,gamemode=adventure,scores={use_shield=1..}] at @s run function game:shops/items/shields/use

# fake strength
execute if entity @a[tag=playing,gamemode=adventure,scores={fake_strength=1..}] run function game:shops/items/shields/strength/main