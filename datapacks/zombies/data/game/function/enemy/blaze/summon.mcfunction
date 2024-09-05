summon minecraft:blaze ~ ~ ~ {Tags:["miniboss","blaze_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=minecraft:blaze,tag=blaze_miniboss,tag=needs_initialization] enemy_health 600
execute as @e[type=minecraft:blaze,tag=needs_initialization,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Fiery Fiend","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:blaze,tag=blaze_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
setblock ~ ~ ~ minecraft:air
kill @s


return 1