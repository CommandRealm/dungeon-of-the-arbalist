#Add scoreboard for bee miniboss timer
scoreboard objectives add bee_timer dummy

summon bee ~ ~ ~ {Tags:["miniboss","bee_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,AngerTime:2147483647}
#Set stats
scoreboard players set @e[type=bee,tag=bee_miniboss,tag=needs_initialization] enemy_health 66
execute as @e[type=bee,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=bee,tag=bee_miniboss] run attribute @s generic.follow_range base set 1024

#Set target for bees
execute as @e[type=bee,tag=bee_miniboss] at @s run function game:enemy/bee/retarget

setblock ~ ~ ~ air
kill @s