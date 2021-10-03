##Called when an arrow is in a block

##tag
tag @s add missed_arrow

execute as @a[tag=playing] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id run scoreboard players reset @s streak

execute as @a[tag=playing] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id if score @s crossbow_id matches 62 run function game:mechanics/miss/radioactive

execute as @a[tag=playing,scores={crossbow_id=22}] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.5 1.5
execute as @a[tag=playing,scores={crossbow_id=44}] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.5 1.5

execute as @a[tag=playing] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id if score @s crossbow_id matches 45 run function game:mechanics/miss/frostbite

execute as @a[tag=playing] at @s if score @s id = @e[type=arrow,tag=missed_arrow,sort=nearest,limit=1] id if score @s crossbow_id matches 61 run function game:mechanics/miss/antimatter


execute if entity @s[tag=grounded_arrow] run function game:mechanics/miss/grounded

##Kill
kill @s