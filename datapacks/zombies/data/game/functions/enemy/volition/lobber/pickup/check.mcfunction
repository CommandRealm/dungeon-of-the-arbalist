# called when we are lobber if we should check to pick things up.

tag @s add self

# make sure we are not on another lobber
execute on passengers run tag @s add void

# seeing if we are already carrying something
execute on vehicle run tag @s add void

# if we are good, pick something up
execute unless entity @e[type=#minecraft:enemy,tag=void] as @e[type=#minecraft:enemy,team=enemy,tag=!self,distance=..2,limit=1,sort=random] at @s run function game:enemy/volition/lobber/pickup/look_for_pickup
tag @e[type=#minecraft:enemy,tag=void] remove void
tag @s remove self