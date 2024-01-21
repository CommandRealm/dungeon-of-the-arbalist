execute store result score $calculate calculate run data get entity @s Motion[0] 450
scoreboard players operation $calculate calculate *= $-1 number
execute store result entity @s Motion[0] double 0.001 run scoreboard players get $calculate calculate
