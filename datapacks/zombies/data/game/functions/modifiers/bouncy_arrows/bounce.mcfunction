# called to make arrows bounce

# removing our in ground tag
data modify entity @s inGround set value 0b

scoreboard players add @s attack 1




execute store result score $calculate calculate run data get entity @s Motion[0] 1000
execute if score $calculate calculate matches 1..700 run function game:modifiers/bouncy_arrows/normalize_x
execute if score $calculate calculate matches -700..-1 run function game:modifiers/bouncy_arrows/normalize_x

execute store result score $calculate calculate run data get entity @s Motion[2] 1000
execute if score $calculate calculate matches 1..700 run function game:modifiers/bouncy_arrows/normalize_z
execute if score $calculate calculate matches -700..-1 run function game:modifiers/bouncy_arrows/normalize_z

# tellraw @a [{"nbt":"Motion[0]","entity":"@s"}]

# detecting what wall we are in
execute unless block ~0.3 ~ ~ #air_like run function game:modifiers/bouncy_arrows/x_wall
execute unless block ~-0.3 ~ ~ #air_like run function game:modifiers/bouncy_arrows/x_wall
execute unless block ~ ~ ~0.3 #air_like run function game:modifiers/bouncy_arrows/z_wall
execute unless block ~ ~ ~-0.3 #air_like run function game:modifiers/bouncy_arrows/z_wall

execute unless block ~ ~-0.3 ~ #air_like run scoreboard players set @s attack 5
kill @s[scores={attack=5..}]


execute store result score $calculate calculate run data get entity @s Rotation[0] 1
scoreboard players operation $calculate calculate *= $-1 number
execute store result entity @s Rotation[0] double 1 run scoreboard players get $calculate calculate
