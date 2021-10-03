##Called to summon the jockeys

##Summoning jockeys
execute at @e[type=stray,tag=boss] run summon bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","boss_minion","default_name","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
execute at @e[type=stray,tag=boss] run summon bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","boss_minion","default_name","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
execute if score $starting_players game matches 3.. at @e[type=stray,tag=boss] run summon bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
execute if score $starting_players game matches 6.. at @e[type=stray,tag=boss] run summon bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
execute if score $starting_players game matches 8.. at @e[type=stray,tag=boss] run summon bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}

##Setting up enemies
scoreboard players set @e[type=bat,tag=needs_initialization] enemy_health 30
scoreboard players set @e[type=skeleton,tag=needs_initialization] enemy_health 40
execute as @e[tag=needs_initialization,type=skeleton] at @s run function game:enemy/initialize
execute as @e[tag=needs_initialization,type=bat] at @s run function game:enemy/initialize
