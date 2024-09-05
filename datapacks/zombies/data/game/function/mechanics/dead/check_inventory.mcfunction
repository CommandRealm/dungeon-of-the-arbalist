##called to check the inventory of dead players.

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b}]}] run function game:mechanics/dead/get_head

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run function game:mechanics/dead/get_bow

execute as @a[tag=playing,team=enemy] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:7b}]}] unless entity @s[scores={arrow_delay=1..}] run function game:mechanics/dead/get_arrow


execute as @a[tag=playing,team=enemy] at @s unless entity @s[scores={arrow_delay=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_bars",Slot:1b},{id:"minecraft:iron_bars",Slot:2b},{id:"minecraft:iron_bars",Slot:3b},{id:"minecraft:iron_bars",Slot:4b},{id:"minecraft:iron_bars",Slot:5b},{id:"minecraft:iron_bars",Slot:6b},{id:"minecraft:compass",Slot:8b},{id:"minecraft:iron_bars",Slot:9b},{id:"minecraft:iron_bars",Slot:10b},{id:"minecraft:iron_bars",Slot:11b},{id:"minecraft:iron_bars",Slot:12b},{id:"minecraft:iron_bars",Slot:13b},{id:"minecraft:iron_bars",Slot:14b},{id:"minecraft:iron_bars",Slot:15b},{id:"minecraft:iron_bars",Slot:16b},{id:"minecraft:iron_bars",Slot:17b},{id:"minecraft:iron_bars",Slot:18b},{id:"minecraft:iron_bars",Slot:19b},{id:"minecraft:iron_bars",Slot:20b},{id:"minecraft:iron_bars",Slot:21b},{id:"minecraft:iron_bars",Slot:22b},{id:"minecraft:iron_bars",Slot:23b},{id:"minecraft:iron_bars",Slot:24b},{id:"minecraft:iron_bars",Slot:25b},{id:"minecraft:iron_bars",Slot:26b},{id:"minecraft:iron_bars",Slot:27b},{id:"minecraft:iron_bars",Slot:28b},{id:"minecraft:iron_bars",Slot:29b},{id:"minecraft:iron_bars",Slot:30b},{id:"minecraft:iron_bars",Slot:31b},{id:"minecraft:iron_bars",Slot:32b},{id:"minecraft:iron_bars",Slot:33b},{id:"minecraft:iron_bars",Slot:34b},{id:"minecraft:iron_bars",Slot:35b}]}] run function game:mechanics/dead/get_iron_bars

execute as @a[tag=playing,scores={arrow_delay=1..},team=enemy] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_bars",Slot:1b},{id:"minecraft:iron_bars",Slot:2b},{id:"minecraft:iron_bars",Slot:3b},{id:"minecraft:iron_bars",Slot:4b},{id:"minecraft:iron_bars",Slot:5b},{id:"minecraft:iron_bars",Slot:6b},{id:"minecraft:iron_bars",Slot:7b},{id:"minecraft:compass",Slot:8b},{id:"minecraft:iron_bars",Slot:9b},{id:"minecraft:iron_bars",Slot:10b},{id:"minecraft:iron_bars",Slot:11b},{id:"minecraft:iron_bars",Slot:12b},{id:"minecraft:iron_bars",Slot:13b},{id:"minecraft:iron_bars",Slot:14b},{id:"minecraft:iron_bars",Slot:15b},{id:"minecraft:iron_bars",Slot:16b},{id:"minecraft:iron_bars",Slot:17b},{id:"minecraft:iron_bars",Slot:18b},{id:"minecraft:iron_bars",Slot:19b},{id:"minecraft:iron_bars",Slot:20b},{id:"minecraft:iron_bars",Slot:21b},{id:"minecraft:iron_bars",Slot:22b},{id:"minecraft:iron_bars",Slot:23b},{id:"minecraft:iron_bars",Slot:24b},{id:"minecraft:iron_bars",Slot:25b},{id:"minecraft:iron_bars",Slot:26b},{id:"minecraft:iron_bars",Slot:27b},{id:"minecraft:iron_bars",Slot:28b},{id:"minecraft:iron_bars",Slot:29b},{id:"minecraft:iron_bars",Slot:30b},{id:"minecraft:iron_bars",Slot:31b},{id:"minecraft:iron_bars",Slot:32b},{id:"minecraft:iron_bars",Slot:33b},{id:"minecraft:iron_bars",Slot:34b},{id:"minecraft:iron_bars",Slot:35b}]}] run function game:mechanics/dead/get_iron_bars

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
##No crimson roots because of spontaneous crossbow
return 1