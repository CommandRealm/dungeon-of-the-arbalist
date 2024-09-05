##Called to start the clones attack.

##Summoning in the strays.
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
summon minecraft:stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",count:1},{}],attributes:[{id:"minecraft:generic.follow_range",base:1000.0d},{id:"minecraft:generic.movement_speed",base:0.35d}]}
scoreboard players set @e[type=minecraft:stray,tag=enemy,tag=!boss] enemy_health 300
execute as @e[type=minecraft:stray,tag=enemy,tag=!boss] at @s run function game:enemy/initialize

##Disabling and reenabling the boss' AI so that they track like new ones
data modify entity @e[type=minecraft:stray,tag=boss,limit=1] NoAI set value 1b


##Moving the strays
tag @e[type=minecraft:stray,tag=enemy,sort=random,limit=1] add temporary_tag
tp @e[type=minecraft:stray,tag=temporary_tag,limit=1] @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=random,limit=1]
tp @e[type=minecraft:stray,tag=enemy,tag=!temporary_tag] @e[type=minecraft:stray,tag=temporary_tag,limit=1]
tag @e[type=minecraft:stray,tag=temporary_tag] remove temporary_tag


##Setting the delay to something ridiculous.
scoreboard players set $attack boss 2147483647

return 1