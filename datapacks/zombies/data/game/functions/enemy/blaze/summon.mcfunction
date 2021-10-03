summon blaze ~ ~ ~ {Tags:["miniboss","blaze_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=blaze,tag=blaze_miniboss,tag=needs_initialization] enemy_health 600
execute as @e[type=blaze,tag=needs_initialization,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Fiery Fiend","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=blaze,tag=blaze_miniboss] run attribute @s generic.follow_range base set 1024
setblock ~ ~ ~ air
kill @s

