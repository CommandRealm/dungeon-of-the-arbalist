summon polar_bear ~ ~ ~ {Tags:["miniboss","polar_bear_miniboss","die_between_games","big_polar_bear","needs_initialization","enemy","miniboss_name"],Passengers:[{id:"minecraft:polar_bear",Age:-1000000,Tags:["miniboss","polar_bear_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],Passengers:[{id:"minecraft:polar_bear",Age:-1000000,Tags:["miniboss","polar_bear_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],Passengers:[{id:"minecraft:polar_bear",Age:-1000000,Tags:["miniboss","polar_bear_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}],CustomNameVisible:1b}],CustomNameVisible:1b}],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=polar_bear,tag=polar_bear_miniboss,tag=needs_initialization,tag=big_polar_bear] enemy_health 400
scoreboard players set @e[type=polar_bear,tag=polar_bear_miniboss,tag=needs_initialization,tag=!big_polar_bear] enemy_health 250
execute as @e[type=polar_bear,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Polar Family","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=polar_bear,tag=polar_bear_miniboss,tag=big_polar_bear] run attribute @s minecraft:generic.movement_speed base set 0.35
execute as @e[type=polar_bear,tag=polar_bear_miniboss,tag=!big_polar_bear] run attribute @s minecraft:generic.movement_speed base set 1.05
execute as @e[type=polar_bear,tag=polar_bear_miniboss] run attribute @s generic.follow_range base set 1024
setblock ~ ~ ~ air
kill @s

