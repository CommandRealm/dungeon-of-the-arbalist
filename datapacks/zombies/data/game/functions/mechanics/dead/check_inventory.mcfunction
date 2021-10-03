##called to check the inventory of dead players.

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run function game:mechanics/dead/get_head

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:bow"}]}] run function game:mechanics/dead/get_bow

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:arrow"}]}] unless entity @s[scores={arrow_delay=1..}] run function game:mechanics/dead/get_arrow


execute as @a[tag=playing,team=enemy] at @s unless entity @s[scores={arrow_delay=1..}] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:iron_bars"},{Slot:2b,id:"minecraft:iron_bars"},{Slot:3b,id:"minecraft:iron_bars"},{Slot:4b,id:"minecraft:iron_bars"},{Slot:5b,id:"minecraft:iron_bars"},{Slot:6b,id:"minecraft:iron_bars"},{Slot:8b,id:"minecraft:compass"},{Slot:9b,id:"minecraft:iron_bars"},{Slot:10b,id:"minecraft:iron_bars"},{Slot:11b,id:"minecraft:iron_bars"},{Slot:12b,id:"minecraft:iron_bars"},{Slot:13b,id:"minecraft:iron_bars"},{Slot:14b,id:"minecraft:iron_bars"},{Slot:15b,id:"minecraft:iron_bars"},{Slot:16b,id:"minecraft:iron_bars"},{Slot:17b,id:"minecraft:iron_bars"},{Slot:18b,id:"minecraft:iron_bars"},{Slot:19b,id:"minecraft:iron_bars"},{Slot:20b,id:"minecraft:iron_bars"},{Slot:21b,id:"minecraft:iron_bars"},{Slot:22b,id:"minecraft:iron_bars"},{Slot:23b,id:"minecraft:iron_bars"},{Slot:24b,id:"minecraft:iron_bars"},{Slot:25b,id:"minecraft:iron_bars"},{Slot:26b,id:"minecraft:iron_bars"},{Slot:27b,id:"minecraft:iron_bars"},{Slot:28b,id:"minecraft:iron_bars"},{Slot:29b,id:"minecraft:iron_bars"},{Slot:30b,id:"minecraft:iron_bars"},{Slot:31b,id:"minecraft:iron_bars"},{Slot:32b,id:"minecraft:iron_bars"},{Slot:33b,id:"minecraft:iron_bars"},{Slot:34b,id:"minecraft:iron_bars"},{Slot:35b,id:"minecraft:iron_bars"}]}] run function game:mechanics/dead/get_iron_bars

execute as @a[tag=playing,team=enemy,scores={arrow_delay=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:iron_bars"},{Slot:2b,id:"minecraft:iron_bars"},{Slot:3b,id:"minecraft:iron_bars"},{Slot:4b,id:"minecraft:iron_bars"},{Slot:5b,id:"minecraft:iron_bars"},{Slot:6b,id:"minecraft:iron_bars"},{Slot:7b,id:"minecraft:iron_bars"},{Slot:8b,id:"minecraft:compass"},{Slot:9b,id:"minecraft:iron_bars"},{Slot:10b,id:"minecraft:iron_bars"},{Slot:11b,id:"minecraft:iron_bars"},{Slot:12b,id:"minecraft:iron_bars"},{Slot:13b,id:"minecraft:iron_bars"},{Slot:14b,id:"minecraft:iron_bars"},{Slot:15b,id:"minecraft:iron_bars"},{Slot:16b,id:"minecraft:iron_bars"},{Slot:17b,id:"minecraft:iron_bars"},{Slot:18b,id:"minecraft:iron_bars"},{Slot:19b,id:"minecraft:iron_bars"},{Slot:20b,id:"minecraft:iron_bars"},{Slot:21b,id:"minecraft:iron_bars"},{Slot:22b,id:"minecraft:iron_bars"},{Slot:23b,id:"minecraft:iron_bars"},{Slot:24b,id:"minecraft:iron_bars"},{Slot:25b,id:"minecraft:iron_bars"},{Slot:26b,id:"minecraft:iron_bars"},{Slot:27b,id:"minecraft:iron_bars"},{Slot:28b,id:"minecraft:iron_bars"},{Slot:29b,id:"minecraft:iron_bars"},{Slot:30b,id:"minecraft:iron_bars"},{Slot:31b,id:"minecraft:iron_bars"},{Slot:32b,id:"minecraft:iron_bars"},{Slot:33b,id:"minecraft:iron_bars"},{Slot:34b,id:"minecraft:iron_bars"},{Slot:35b,id:"minecraft:iron_bars"}]}] run function game:mechanics/dead/get_iron_bars

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
##No crimson roots because of spontaneous crossbow