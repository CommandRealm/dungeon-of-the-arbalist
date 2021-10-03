##Shop raycast function

##If we hit our target.
execute if entity @e[type=item,tag=shop_item,distance=..0.7] run function game:shops/raycast/hit

##Recursive part of the function
execute if entity @s[distance=..5] unless entity @e[type=item,tag=shop_item,distance=..0.7] positioned ^ ^ ^0.25 run function game:shops/raycast/continue