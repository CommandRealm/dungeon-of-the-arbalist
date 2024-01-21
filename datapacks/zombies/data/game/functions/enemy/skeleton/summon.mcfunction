summon skeleton_horse ~ ~ ~ {Tame:1b,Temper:0,Tags:["miniboss","skeleton_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","skeleton_horse"],Passengers:[{id:"minecraft:skeleton",CustomNameVisible:1b,Tags:["miniboss","skeleton_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],Attributes:[{Name:"generic.movement_speed",Base:0.45}]}],Attributes:[{Name:"generic.movement_speed",Base:0.25}],SaddleItem:{}}

#Set health
scoreboard players set @e[type=skeleton,tag=skeleton_miniboss,tag=needs_initialization,tag=!skeleton_horse] enemy_health 400
scoreboard players set @e[type=skeleton_horse,tag=skeleton_miniboss,tag=needs_initialization,tag=skeleton_horse] enemy_health 200
execute as @e[type=skeleton,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=skeleton_horse,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Royal Archer","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=skeleton,tag=skeleton_miniboss] run attribute @s generic.follow_range base set 1024
setblock ~ ~ ~ air
kill @s

