summon minecraft:skeleton_horse ~ ~ ~ {Tame:1b,Temper:0,Tags:["miniboss","skeleton_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","skeleton_horse"],Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["miniboss","skeleton_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],HandItems:[{id:"minecraft:bow",components:{"minecraft:unbreakable":{}},count:1},{}],ArmorItems:[{id:"minecraft:chainmail_boots",count:1},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:iron_helmet",count:1}],attributes:[{id:"minecraft:generic.movement_speed",base:0.45d}]}],SaddleItem:{},attributes:[{id:"minecraft:generic.movement_speed",base:0.25d}]}

#Set health
scoreboard players set @e[type=minecraft:skeleton,tag=skeleton_miniboss,tag=needs_initialization,tag=!skeleton_horse] enemy_health 400
scoreboard players set @e[type=minecraft:skeleton_horse,tag=skeleton_miniboss,tag=needs_initialization,tag=skeleton_horse] enemy_health 200
execute as @e[type=minecraft:skeleton,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=minecraft:skeleton_horse,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Royal Archer","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:skeleton,tag=skeleton_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
setblock ~ ~ ~ minecraft:air
kill @s


return 1