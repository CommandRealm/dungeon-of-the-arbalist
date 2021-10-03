summon illusioner ~ ~ ~ {Tags:["miniboss","illusioner_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:wither_rose",Count:1b}]}

#Set health
scoreboard players set @e[type=illusioner,tag=illusioner_miniboss,tag=needs_initialization] enemy_health 215
execute as @e[type=illusioner,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Daring Dancer","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=illusioner,tag=illusioner_miniboss] run attribute @s generic.follow_range base set 1024
fill ~1 ~ ~1 ~-1 ~ ~-1 air replace command_block
kill @s