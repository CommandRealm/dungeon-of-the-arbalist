##called when there is a whirlpool.
execute as @e[type=minecraft:armor_stand,x=2000,y=0,z=0,tag=whirlpool,sort=nearest] at @s run function game:shops/items/whirlpool/pull_enemies
tag @e[tag=whirlpooled] remove whirlpooled

##particles and Rotation
execute as @e[type=minecraft:armor_stand,tag=whirlpool] at @s run tp @s ~ ~ ~ ~15 ~
execute at @e[type=minecraft:armor_stand,tag=whirlpool] run particle minecraft:rain ~ ~ ~ 0.5 0.5 0.5 0.25 15
return 1