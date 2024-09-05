# Piglin Miniboss
execute if entity @s[tag=!crossbow,tag=!hoglin] run summon minecraft:piglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotHunt:1b,HandItems:[{id:"minecraft:golden_sword",count:1},{}],attributes:[{id:"minecraft:generic.attack_damage",base:0.25d}]}
execute if entity @s[tag=crossbow,tag=!hoglin] run summon minecraft:piglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotHunt:1b,HandItems:[{id:"minecraft:crossbow",count:1},{}]}
execute if entity @s[tag=hoglin,tag=!crossbow] run summon minecraft:hoglin ~ ~ ~ {Tags:["miniboss","piglin_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,IsImmuneToZombification:1b,CannotBeHunted:1b,attributes:[{id:"minecraft:generic.attack_damage",base:4.0d}]}

#Set stats
scoreboard players set @e[type=minecraft:piglin,tag=piglin_miniboss,tag=needs_initialization] enemy_health 150
scoreboard players set @e[type=minecraft:hoglin,tag=piglin_miniboss,tag=needs_initialization] enemy_health 400
execute as @e[type=#game:piglins,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=#game:piglins,tag=piglin_miniboss] run attribute @s minecraft:generic.follow_range base set 1024

setblock ~ ~ ~ minecraft:air
kill @s
return 1