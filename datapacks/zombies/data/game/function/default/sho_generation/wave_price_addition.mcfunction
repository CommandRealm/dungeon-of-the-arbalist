# adding wave item price increases 
scoreboard players operation $calculate calculate = $wave game
scoreboard players operation $calculate calculate *= $wave game
scoreboard players operation $calculate calculate += $wave game
scoreboard players operation $calculate calculate /= $3 number
execute as @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{needs_initialization:1b}}}}] at @s run scoreboard players operation @s item_price += $calculate calculate
return 1