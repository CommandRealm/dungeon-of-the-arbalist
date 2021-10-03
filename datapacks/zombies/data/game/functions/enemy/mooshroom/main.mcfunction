execute as @e[type=mooshroom,tag=mooshroom_miniboss,nbt={Type:"red",HurtTime:10s}] at @s run function game:enemy/mooshroom/hurt
execute as @e[type=mooshroom,tag=mooshroom_miniboss,tag=!mooshroom_regen] at @s run particle happy_villager ~ ~ ~ 6 .05 6 .1 5 normal
execute as @e[type=mooshroom,tag=mooshroom_miniboss,tag=mooshroom_regen] at @s run function game:enemy/mooshroom/regen
execute as @e[type=mooshroom,tag=mooshroom_miniboss] at @s run effect clear @s poison