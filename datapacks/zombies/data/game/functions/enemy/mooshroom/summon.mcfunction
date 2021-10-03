#Add scoreboard for regen timer
scoreboard objectives add mooshroom_regen dummy

summon mooshroom ~ ~ ~ {Tags:["miniboss","mooshroom_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=mooshroom,tag=mooshroom_miniboss,tag=needs_initialization] enemy_health 250
execute as @e[type=mooshroom,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Furious Fungus","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=mooshroom,tag=mooshroom_miniboss] run attribute @s minecraft:generic.movement_speed base set 0.35
execute as @e[type=mooshroom,tag=mooshroom_miniboss] run attribute @s generic.follow_range base set 1024
execute as @e[type=area_effect_cloud,tag=mooshroom_spawn,tag=miniboss_spawn] at @s run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=mooshroom_spawn,tag=miniboss_spawn] at @s run kill @s