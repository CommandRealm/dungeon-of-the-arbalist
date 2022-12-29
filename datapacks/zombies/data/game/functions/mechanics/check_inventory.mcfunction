##called to check inventories for our players.


##Dropping the item in the back slot of the inventory.
execute as @a[tag=playing,nbt={Inventory:[{Slot:9b}]}] at @s unless data entity @s Inventory[{Slot:9b,id:"minecraft:iron_bars"}] run function game:mechanics/drop_back_inventory_item


##Seeing if hotbar is filled
tag @a remove filled_hotbar
execute as @a[tag=playing,nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b}]},tag=!filled_hotbar,team=game] at @s run function game:mechanics/has_filled_hotbar

##Checking iron bars
execute as @a[tag=playing,tag=!filled_hotbar] at @s unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:iron_bars"},{Slot:10b,id:"minecraft:iron_bars"},{Slot:11b,id:"minecraft:iron_bars"},{Slot:15b,id:"minecraft:iron_bars"},{Slot:16b,id:"minecraft:iron_bars"},{Slot:17b,id:"minecraft:iron_bars"},{Slot:18b,id:"minecraft:iron_bars"},{Slot:19b,id:"minecraft:iron_bars"},{Slot:20b,id:"minecraft:iron_bars"},{Slot:21b,id:"minecraft:iron_bars"},{Slot:25b,id:"minecraft:iron_bars"},{Slot:26b,id:"minecraft:iron_bars"},{Slot:27b,id:"minecraft:iron_bars"},{Slot:28b,id:"minecraft:iron_bars"},{Slot:29b,id:"minecraft:iron_bars"},{Slot:30b,id:"minecraft:iron_bars"},{Slot:31b,id:"minecraft:iron_bars"},{Slot:32b,id:"minecraft:iron_bars"},{Slot:33b,id:"minecraft:iron_bars"},{Slot:34b,id:"minecraft:iron_bars"},{Slot:35b,id:"minecraft:iron_bars"}]}] run function game:mechanics/fill_iron_bars

execute as @a[tag=playing,tag=filled_hotbar] at @s unless entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:iron_bars"},{Slot:11b,id:"minecraft:iron_bars"},{Slot:15b,id:"minecraft:iron_bars"},{Slot:16b,id:"minecraft:iron_bars"},{Slot:17b,id:"minecraft:iron_bars"},{Slot:18b,id:"minecraft:iron_bars"},{Slot:19b,id:"minecraft:iron_bars"},{Slot:20b,id:"minecraft:iron_bars"},{Slot:21b,id:"minecraft:iron_bars"},{Slot:25b,id:"minecraft:iron_bars"},{Slot:26b,id:"minecraft:iron_bars"},{Slot:27b,id:"minecraft:iron_bars"},{Slot:28b,id:"minecraft:iron_bars"},{Slot:29b,id:"minecraft:iron_bars"},{Slot:30b,id:"minecraft:iron_bars"},{Slot:31b,id:"minecraft:iron_bars"},{Slot:32b,id:"minecraft:iron_bars"},{Slot:33b,id:"minecraft:iron_bars"},{Slot:34b,id:"minecraft:iron_bars"},{Slot:35b,id:"minecraft:iron_bars"}]}] run function game:mechanics/fill_iron_bars

# booster displays
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:12b,tag:{display_booster:1b}},{Slot:13b,tag:{display_booster:1b}},{Slot:14b,tag:{display_booster:1b}},{Slot:21b,tag:{display_booster:1b}},{Slot:22b,tag:{display_booster:1b}},{Slot:23b,tag:{display_booster:1b}}]}] run function game:mechanics/get_display_boosters

##checking armor
execute as @a[tag=playing,team=game] at @s unless entity @s[nbt={Inventory:[{Slot:100b},{Slot:101b},{Slot:102b}]}] run function game:mechanics/get_armor

##If we don't have compass
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:compass"}]}] unless entity @s[x=1784,y=56,z=-175,distance=..50] unless entity @s[y=0,distance=..20] run function game:mechanics/get_compass

##if there is a dead player
execute if entity @a[tag=playing,team=enemy] run function game:mechanics/dead/check_inventory

##Clearing flow pot items
clear @a[tag=playing] dandelion
clear @a[tag=playing] poppy
clear @a[tag=playing] blue_orchid
clear @a[tag=playing] allium
clear @a[tag=playing] azure_bluet
clear @a[tag=playing] red_tulip
clear @a[tag=playing] orange_tulip
clear @a[tag=playing] white_tulip
clear @a[tag=playing] pink_tulip
clear @a[tag=playing] oxeye_daisy
clear @a[tag=playing] cornflower
clear @a[tag=playing] lily_of_the_valley
clear @a[tag=playing] wither_rose
clear @a[tag=playing] oak_sapling
clear @a[tag=playing] spruce_sapling
clear @a[tag=playing] birch_sapling
clear @a[tag=playing] jungle_sapling
clear @a[tag=playing] acacia_sapling
clear @a[tag=playing] dark_oak_sapling
clear @a[tag=playing] red_mushroom
clear @a[tag=playing] brown_mushroom
clear @a[tag=playing] fern
clear @a[tag=playing] dead_bush
clear @a[tag=playing] cactus
clear @a[tag=playing] bamboo
clear @a[tag=playing] warped_fungus
clear @a[tag=playing] crimson_fungus
clear @a[tag=playing] warped_roots
##Removing tipped arrow
clear @a[tag=playing] tipped_arrow
##Clearing unnecessary items
clear @a[gamemode=adventure,tag=mechanics] glass_bottle

##No crimson roots because of spontaneous crossbow

##Removing advancement
advancement revoke @a only game:inventory_changed
