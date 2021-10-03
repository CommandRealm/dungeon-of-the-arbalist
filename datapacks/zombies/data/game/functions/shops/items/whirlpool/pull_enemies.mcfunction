##called to pull enemies.

##tag
tag @s add temporary_tag



##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[0] 100

##Store positions (zombie)
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result score @s calculate run data get entity @s Pos[0] 100

##Subtracting
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1] calculate

##Applying motion
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result entity @s Motion[0] double -0.00045 run scoreboard players get @s calculate



##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[1] 100

##Store positions (zombie)
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result score @s calculate run data get entity @s Pos[1] 100

##Subtracting
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1] calculate

##Applying motion
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result entity @s Motion[1] double -0.00045 run scoreboard players get @s calculate



##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result score @s calculate run data get entity @s Pos[2] 100

##Subtracting
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1] calculate

##Applying motion
execute as @e[distance=..7.5,tag=enemy,tag=!boss,tag=!miniboss,tag=!whirlpooled] at @s store result entity @s Motion[2] double -0.00045 run scoreboard players get @s calculate

tag @e[distance=..7.5] add whirlpooled


tag @s remove temporary_tag

