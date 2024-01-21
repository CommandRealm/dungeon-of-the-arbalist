# adding wave item price increases 
scoreboard players operation $calculate calculate = $wave game
scoreboard players operation $calculate calculate *= $wave game
scoreboard players operation $calculate calculate += $wave game
scoreboard players operation $calculate calculate /= $3 number
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run scoreboard players operation @s item_price += $calculate calculate