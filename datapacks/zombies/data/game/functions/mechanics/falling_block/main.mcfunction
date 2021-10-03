##Called if there is a "falling block" (these are actually armor stands.)

##Rotating armor stands
execute as @e[type=armor_stand,tag=falling_block] store result score @s calculate run data get entity @s Rotation[0] 100
scoreboard players add @e[type=armor_stand,tag=falling_block] calculate 1500
execute as @e[type=armor_stand,tag=falling_block] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s calculate

##If we touch the ground, call function (death timer count is so that it doesn't immediately run.)
execute as @e[type=armor_stand,tag=falling_block,scores={death_timer=..99},nbt={OnGround:1b}] at @s run function game:mechanics/falling_block/hit
execute as @e[type=armor_stand,tag=falling_block,scores={death_timer=..99}] at @s if entity @e[tag=enemy,distance=..1.75] run function game:mechanics/falling_block/hit