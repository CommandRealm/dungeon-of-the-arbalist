#Add scoreboard for spider timer
scoreboard objectives add spider_timer dummy

summon minecraft:spider ~ ~ ~ {Tags:["miniboss","spider_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=minecraft:spider,tag=spider_miniboss,tag=needs_initialization] enemy_health 625
execute as @e[type=minecraft:spider,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Spider Queen","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:spider,tag=spider_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
setblock ~ ~ ~ minecraft:air
kill @s
return 1