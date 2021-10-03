##Raycast function

##If we hit our target.
execute if entity @e[tag=raycast,distance=..3,tag=!skip_raycast] run function game:mechanics/raycast/hit

##Recursive part of the function
execute if entity @s[distance=..6] unless entity @e[tag=raycast,distance=..3,tag=!skip_raycast] positioned ^ ^ ^0.5 run function game:mechanics/raycast/raycast