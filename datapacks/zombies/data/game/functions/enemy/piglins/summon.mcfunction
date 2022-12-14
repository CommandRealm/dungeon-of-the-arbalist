# Piglin Miniboss
execute if entity @s[tag=!crossbow,tag=!hoglin] run summon piglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotHunt:1b,Attributes:[{Name:"generic.attack_damage",Base:0.25}],HandItems:[{"id":"minecraft:golden_sword",Count:1b},{}]}
execute if entity @s[tag=crossbow,tag=!hoglin] run summon piglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotHunt:1b,HandItems:[{"id":"minecraft:crossbow",Count:1b},{}]}
execute if entity @s[tag=!crossbow,tag=hoglin] run summon hoglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotBeHunted:1b,Attributes:[{Name:"generic.attack_damage",Base:4.0}]}

#Set stats
scoreboard players set @e[type=piglin,tag=piglin_miniboss,tag=needs_initialization] enemy_health 150
scoreboard players set @e[type=hoglin,tag=piglin_miniboss,tag=needs_initialization] enemy_health 400
execute as @e[type=#game:piglins,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=#game:piglins,tag=piglin_miniboss] run attribute @s generic.follow_range base set 1024

setblock ~ ~ ~ air
kill @s