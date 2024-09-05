#Add scoreboard for husk timer and set values
scoreboard objectives add husk_timer dummy
scoreboard players set $chargeup husk_timer 0
scoreboard players set $speed husk_timer 0
scoreboard players set $cooldown husk_timer 0

summon minecraft:husk ~ ~ ~ {Tags:["miniboss","husk_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","husk_cooldown"],CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_shovel",count:1},{}]}

#Set health
scoreboard players set @e[type=minecraft:husk,tag=husk_miniboss,tag=needs_initialization] enemy_health 500
execute as @e[type=minecraft:husk,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Gravedigger","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:husk,tag=husk_miniboss] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @e[type=minecraft:husk,tag=husk_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
setblock ~ ~ ~ minecraft:air
kill @s



return 1