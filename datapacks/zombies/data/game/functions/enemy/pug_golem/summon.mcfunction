#Add scoreboard for golem miniboss timer

scoreboard players set $wave game 8
scoreboard objectives add pug_golem_timer dummy
scoreboard players set $chargeup pug_golem_timer 0
scoreboard players set $charging pug_golem_timer 0
scoreboard players set $stunned pug_golem_timer 0

summon iron_golem 5125 88 -2 {PlayerCreated:0b,AngerTime:1000000,Tags:["miniboss","pug_golem_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","pug_stunned","no_boosters"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=iron_golem,tag=pug_golem_miniboss,tag=needs_initialization] enemy_health 800
execute as @e[type=iron_golem,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Gallant Golem","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=iron_golem,tag=pug_golem_miniboss] run attribute @s generic.follow_range base set 1024