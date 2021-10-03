#Add scoreboard for slime information
scoreboard objectives add slime_sizes dummy

execute if entity @s[type=area_effect_cloud,tag=slime_spawn,tag=miniboss_spawn] run summon slime ~ ~ ~ {Tags:["miniboss","slime_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b,Size:4,PersistenceRequired:1b}


#Set health
    scoreboard players set @e[type=slime,tag=slime_miniboss,tag=needs_initialization,nbt={Size:4}] enemy_health 500
    

execute as @e[type=slime,tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[type=slime,tag=slime_miniboss] run attribute @s generic.follow_range base set 1024

execute as @e[type=slime,tag=slime_miniboss] at @s store result score @s slime_sizes run data get entity @s Size


##welcoming message
execute if entity @s[type=area_effect_cloud,tag=slime_spawn,tag=miniboss_spawn] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Static Splitters","color":"red","bold":true}]
execute if entity @s[type=area_effect_cloud,tag=slime_spawn,tag=miniboss_spawn] as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

setblock ~ ~ ~ air
kill @s

