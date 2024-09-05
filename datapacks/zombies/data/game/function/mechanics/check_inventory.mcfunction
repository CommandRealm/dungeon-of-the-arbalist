##called to check inventories for our players.


##Dropping the item in the back slot of the inventory.
execute as @a[tag=playing,nbt={Inventory:[{Slot:9b}]}] at @s unless data entity @s Inventory[{id:"minecraft:iron_bars",Slot:9b}] run function game:mechanics/drop_back_inventory_item


##Seeing if hotbar is filled
tag @a remove filled_hotbar
execute as @a[tag=playing,tag=!filled_hotbar,team=game,nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b}]}] at @s run function game:mechanics/has_filled_hotbar

##Checking iron bars
execute as @a[tag=playing,tag=!filled_hotbar] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_bars",Slot:9b},{id:"minecraft:iron_bars",Slot:10b},{id:"minecraft:iron_bars",Slot:11b},{id:"minecraft:iron_bars",Slot:15b},{id:"minecraft:iron_bars",Slot:16b},{id:"minecraft:iron_bars",Slot:17b},{id:"minecraft:iron_bars",Slot:18b},{id:"minecraft:iron_bars",Slot:19b},{id:"minecraft:iron_bars",Slot:20b},{id:"minecraft:iron_bars",Slot:21b},{id:"minecraft:iron_bars",Slot:25b},{id:"minecraft:iron_bars",Slot:26b},{id:"minecraft:iron_bars",Slot:27b},{id:"minecraft:iron_bars",Slot:28b},{id:"minecraft:iron_bars",Slot:29b},{id:"minecraft:iron_bars",Slot:30b},{id:"minecraft:iron_bars",Slot:31b},{id:"minecraft:iron_bars",Slot:32b},{id:"minecraft:iron_bars",Slot:33b},{id:"minecraft:iron_bars",Slot:34b},{id:"minecraft:iron_bars",Slot:35b}]}] run function game:mechanics/fill_iron_bars

execute as @a[tag=playing,tag=filled_hotbar] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_bars",Slot:10b},{id:"minecraft:iron_bars",Slot:11b},{id:"minecraft:iron_bars",Slot:15b},{id:"minecraft:iron_bars",Slot:16b},{id:"minecraft:iron_bars",Slot:17b},{id:"minecraft:iron_bars",Slot:18b},{id:"minecraft:iron_bars",Slot:19b},{id:"minecraft:iron_bars",Slot:20b},{id:"minecraft:iron_bars",Slot:21b},{id:"minecraft:iron_bars",Slot:25b},{id:"minecraft:iron_bars",Slot:26b},{id:"minecraft:iron_bars",Slot:27b},{id:"minecraft:iron_bars",Slot:28b},{id:"minecraft:iron_bars",Slot:29b},{id:"minecraft:iron_bars",Slot:30b},{id:"minecraft:iron_bars",Slot:31b},{id:"minecraft:iron_bars",Slot:32b},{id:"minecraft:iron_bars",Slot:33b},{id:"minecraft:iron_bars",Slot:34b},{id:"minecraft:iron_bars",Slot:35b}]}] run function game:mechanics/fill_iron_bars

# booster displays
execute as @a[tag=playing,team=!enemy] at @s unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{display_booster:1b}},Slot:12b},{components:{"minecraft:custom_data":{display_booster:1b}},Slot:13b},{components:{"minecraft:custom_data":{display_booster:1b}},Slot:14b},{components:{"minecraft:custom_data":{display_booster:1b}},Slot:21b},{components:{"minecraft:custom_data":{display_booster:1b}},Slot:22b},{components:{"minecraft:custom_data":{display_booster:1b}},Slot:23b}]}] run function game:mechanics/get_display_boosters

##checking armor
execute as @a[tag=playing,team=game] at @s unless entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b}]}] run function game:mechanics/get_armor

##If we don't have compass
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:compass",Slot:8b}]}] unless entity @s[x=1784,y=56,z=-175,distance=..50] unless entity @s[y=0,distance=..20] run function game:mechanics/get_compass

##if there is a dead player
execute if entity @a[tag=playing,team=enemy] run function game:mechanics/dead/check_inventory

##Clearing flow pot items
clear @a[tag=playing] minecraft:dandelion
clear @a[tag=playing] minecraft:poppy
clear @a[tag=playing] minecraft:blue_orchid
clear @a[tag=playing] minecraft:allium
clear @a[tag=playing] minecraft:azure_bluet
clear @a[tag=playing] minecraft:red_tulip
clear @a[tag=playing] minecraft:orange_tulip
clear @a[tag=playing] minecraft:white_tulip
clear @a[tag=playing] minecraft:pink_tulip
clear @a[tag=playing] minecraft:oxeye_daisy
clear @a[tag=playing] minecraft:cornflower
clear @a[tag=playing] minecraft:lily_of_the_valley
clear @a[tag=playing] minecraft:wither_rose
clear @a[tag=playing] minecraft:oak_sapling
clear @a[tag=playing] minecraft:spruce_sapling
clear @a[tag=playing] minecraft:birch_sapling
clear @a[tag=playing] minecraft:jungle_sapling
clear @a[tag=playing] minecraft:acacia_sapling
clear @a[tag=playing] minecraft:dark_oak_sapling
clear @a[tag=playing] minecraft:red_mushroom
clear @a[tag=playing] minecraft:brown_mushroom
clear @a[tag=playing] minecraft:fern
clear @a[tag=playing] minecraft:dead_bush
clear @a[tag=playing] minecraft:cactus
clear @a[tag=playing] minecraft:bamboo
clear @a[tag=playing] minecraft:warped_fungus
clear @a[tag=playing] minecraft:crimson_fungus
clear @a[tag=playing] minecraft:warped_roots
##Removing tipped arrow
clear @a[tag=playing] minecraft:tipped_arrow
##Clearing unnecessary items
clear @a[gamemode=adventure,tag=mechanics] minecraft:glass_bottle

##No crimson roots because of spontaneous crossbow

##Removing advancement
advancement revoke @a only game:inventory_changed

return 1