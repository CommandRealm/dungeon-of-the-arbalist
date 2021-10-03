##Called to start the clones attack.

##Summoning in the strays.
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
summon stray ~ ~ ~ {Tags:["enemy","die_between_games","boss_minion"],HandItems:[{id:"minecraft:wooden_hoe",Count:1b},{}],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.movement_speed",Base:0.35}]}
scoreboard players set @e[type=stray,tag=enemy,tag=!boss] enemy_health 300
execute as @e[type=stray,tag=enemy,tag=!boss] at @s run function game:enemy/initialize

##Disabling and reenabling the boss' AI so that they track like new ones
data modify entity @e[type=stray,tag=boss,limit=1] NoAI set value 1b


##Moving the strays
tag @e[type=stray,tag=enemy,sort=random,limit=1] add temporary_tag
tp @e[type=stray,tag=temporary_tag,limit=1] @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1]
tp @e[type=stray,tag=enemy,tag=!temporary_tag] @e[type=stray,tag=temporary_tag,limit=1]
tag @e[type=stray,tag=temporary_tag] remove temporary_tag


##Setting the delay to something ridiculous.
scoreboard players set $attack boss 2147483647
