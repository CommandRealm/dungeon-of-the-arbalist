##Main function for shop items etc.


##If there is a fishing bobber
execute if entity @e[type=minecraft:fishing_bobber] run function game:shops/items/active_fishing_bobber


##If there is a dropped tnt
execute if entity @e[type=minecraft:armor_stand,tag=throwable,limit=1] run function game:shops/items/throwable/active

##If we dropped a droppable item
execute as @a[gamemode=adventure,tag=playing,scores={drop=1..}] at @s run function game:shops/items/check_drop

##If a player has a map
execute if entity @a[gamemode=adventure,tag=playing,team=game,nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}}] run function game:shops/items/map/main

##If someone is holding the magnet
execute as @a[gamemode=adventure,tag=playing,team=game,nbt={SelectedItem:{id:"minecraft:hopper"}}] at @s run function game:shops/items/use_magnet
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{treasure:1}}},NoGravity:1b}] at @s unless entity @a[gamemode=adventure,distance=..7.5,tag=playing,team=game,nbt={SelectedItem:{id:"minecraft:hopper"}}] run data modify entity @s NoGravity set value 0b

##If a treasure zombie takes hurt time
execute as @e[type=minecraft:skeleton,tag=treasure_zombie,nbt={HurtTime:9s}] at @s run function game:shops/items/treasure_zombie_hurt

##If there is a whirlpool
execute if entity @e[type=minecraft:armor_stand,tag=whirlpool] run function game:shops/items/whirlpool/main
return 1