execute if entity @a[distance=..30,team=game] run summon minecraft:cave_spider ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:1388575},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{},{id:"minecraft:stone_button",count:1}],Tags:["die_between_games","enemy","cave_spider","needs_initialization","default_name"],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.3d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:0.75d}]}
scoreboard players set @e[type=minecraft:cave_spider,tag=cave_spider,tag=needs_initialization] enemy_health 40
scoreboard players set @e[type=minecraft:cave_spider,tag=cave_spider,tag=needs_initialization] enemy_loot_table 2
execute as @e[type=minecraft:cave_spider,tag=cave_spider,tag=needs_initialization] at @s run function game:enemy/initialize
scoreboard players set @s spider_timer 0
return 1