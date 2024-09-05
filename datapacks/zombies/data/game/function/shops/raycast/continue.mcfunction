##Shop raycast function

##If we hit our target.
execute if entity @e[type=minecraft:item,distance=..0.7,tag=shop_item] run function game:shops/raycast/hit

##Recursive part of the function
execute if entity @s[distance=..5] unless entity @e[type=minecraft:item,distance=..0.7,tag=shop_item] positioned ^ ^ ^0.25 run function game:shops/raycast/continue
return 1