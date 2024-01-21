

execute store result score $calculate calculate run data get entity @s Motion[2] 1000
execute if score $calculate calculate matches 0..1000 run scoreboard players operation $calculate calculate *= $2 number
execute if score $calculate calculate matches -1000..0 run scoreboard players operation $calculate calculate *= $2 number

execute store result entity @s Motion[2] double 0.001 run scoreboard players get $calculate calculate

execute if score $calculate calculate matches 1..700 run function game:modifiers/bouncy_arrows/normalize_z
execute if score $calculate calculate matches -700..-1 run function game:modifiers/bouncy_arrows/normalize_z