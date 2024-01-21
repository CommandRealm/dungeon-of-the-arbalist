# called to throw the mob

# finding the mob riding us
tag @s add temp_base
execute on passengers run tag @s add temp2
tag @e[type=#minecraft:enemy,tag=temp2,sort=nearest] add temp
tag @e[type=#minecraft:enemy,tag=temp2] remove temp2

# the mob we want to throw now has the 'temp' tag

execute as @e[type=#minecraft:enemy,tag=temp] at @s run function game:enemy/volition/lobber/launch





tag @s remove temp_base