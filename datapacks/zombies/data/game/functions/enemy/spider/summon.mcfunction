#Add scoreboard for spider timer
scoreboard objectives add spider_timer dummy

summon spider ~ ~ ~ {Tags:["miniboss","spider_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=spider,tag=spider_miniboss,tag=needs_initialization] enemy_health 625
execute as @e[type=spider,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Spider Queen","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=spider,tag=spider_miniboss] run attribute @s generic.follow_range base set 1024
setblock ~ ~ ~ air
kill @s