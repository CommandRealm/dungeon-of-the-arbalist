##Called when tnt is thrown.

##Tag
tag @s add temporary_tag

##summon
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:tnt"}}] positioned ^ ^ ^0.5 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Invisible:1b,Small:0b,Tags:["throwable_tnt","throwable","die_between_games","throwable_get_motion"],Pose:{Head:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},NoBasePlate:1b}

execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:blue_glazed_terracotta"}}] positioned ^ ^ ^0.5 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:blue_concrete_powder",Count:1b}],Invisible:1b,Small:0b,Tags:["throwable_whirlpool","throwable","die_between_games","throwable_get_motion"],Pose:{Head:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},NoBasePlate:1b}

execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{id:"minecraft:ice"}}] positioned ^ ^ ^0.5 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Invisible:1b,Small:0b,Tags:["throwable_ice","throwable","die_between_games","throwable_get_motion"],Pose:{Head:[0.0f,0.0f,0.0f],RightLeg:[180.0f,0.0f,0.0f],LeftLeg:[180.0f,0.0f,0.0f]},NoBasePlate:1b}


##Tp
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s rotated as @p[tag=temporary_tag] run tp @s ~ ~ ~ ~ ~


##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[0] 100

##Store positions (zombie)
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result score @s calculate run data get entity @s Pos[0] 100

##Subtracting
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] calculate

##Applying motion
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result entity @s Motion[0] double 0.045 run scoreboard players get @s calculate



##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[1] 100

##Store positions (zombie)
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result score @s calculate run data get entity @s Pos[1] 100

##Subtracting
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] calculate

##Applying motion
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result entity @s Motion[1] double 0.045 run scoreboard players get @s calculate




##Store positions (players)
execute store result score @s calculate run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result score @s calculate run data get entity @s Pos[2] 100

##Subtracting
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] calculate

##Applying motion
execute as @e[type=armor_stand,tag=throwable_get_motion] at @s store result entity @s Motion[2] double 0.045 run scoreboard players get @s calculate

##moving the throwable up a block
execute store result score $calculate calculate run data get entity @e[type=armor_stand,tag=throwable_get_motion,limit=1] Pos[1] 100
scoreboard players add $calculate calculate 100
execute store result entity @e[type=armor_stand,tag=throwable_get_motion,limit=1] Pos[1] double 0.01 run scoreboard players get $calculate calculate



##Removing tags
tag @e[type=armor_stand,tag=throwable_get_motion] remove throwable_get_motion
tag @s remove temporary_tag

##sound 
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.9

