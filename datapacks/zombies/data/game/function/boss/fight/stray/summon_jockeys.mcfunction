##Called to summon the jockeys

##Summoning jockeys
execute at @e[type=minecraft:stray,tag=boss] run summon minecraft:bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","boss_minion","default_name","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1}],HandItems:[{id:"minecraft:bow",count:1},{}]}]}
execute at @e[type=minecraft:stray,tag=boss] run summon minecraft:bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","boss_minion","default_name","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1}],HandItems:[{id:"minecraft:bow",count:1},{}]}]}
execute if score $starting_players game matches 3.. at @e[type=minecraft:stray,tag=boss] run summon minecraft:bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1}],HandItems:[{id:"minecraft:bow",count:1},{}]}]}
execute if score $starting_players game matches 6.. at @e[type=minecraft:stray,tag=boss] run summon minecraft:bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1}],HandItems:[{id:"minecraft:bow",count:1},{}]}]}
execute if score $starting_players game matches 8.. at @e[type=minecraft:stray,tag=boss] run summon minecraft:bat ~ ~3 ~ {CustomNameVisible:1b,Tags:["enemy","default_name","boss_minion","needs_initialization","jockey"],Silent:0b,Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["enemy","boss_minion","needs_initialization","default_name","jockey"],ArmorItems:[{},{},{},{id:"minecraft:ice",count:1}],HandItems:[{id:"minecraft:bow",count:1},{}]}]}

##Setting up enemies
scoreboard players set @e[type=minecraft:bat,tag=needs_initialization] enemy_health 30
scoreboard players set @e[type=minecraft:skeleton,tag=needs_initialization] enemy_health 40
execute as @e[type=minecraft:skeleton,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=minecraft:bat,tag=needs_initialization] at @s run function game:enemy/initialize

return 1