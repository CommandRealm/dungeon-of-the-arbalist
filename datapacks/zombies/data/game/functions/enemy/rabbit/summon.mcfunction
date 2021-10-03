execute as @e[type=area_effect_cloud,tag=rabbit_spawn,tag=miniboss_spawn] at @s run summon rabbit ~ ~ ~ {RabbitType:99,Tags:["miniboss","rabbit_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],CustomNameVisible:1b}

#Set health
scoreboard players set @e[tag=rabbit_miniboss,tag=needs_initialization] enemy_health 320
execute as @e[tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[tag=rabbit_miniboss] run attribute @s generic.follow_range base set 1024
execute as @e[type=area_effect_cloud,tag=rabbit_spawn,tag=miniboss_spawn] at @s run kill @s