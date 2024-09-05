summon minecraft:illusioner ~ ~ ~ {Tags:["miniboss","illusioner_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",count:1},{id:"minecraft:wither_rose",count:1}]}

#Set health
scoreboard players set @e[type=minecraft:illusioner,tag=illusioner_miniboss,tag=needs_initialization] enemy_health 215
execute as @e[type=minecraft:illusioner,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Daring Dancer","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:illusioner,tag=illusioner_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:air replace minecraft:command_block
kill @s
return 1