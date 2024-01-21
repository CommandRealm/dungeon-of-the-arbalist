# called to launch the thrown entity at the player


ride @s dismount


##Tag
tag @s add temp

tp @s @e[type=wither_skeleton,tag=temp_base,limit=1]

##Summoning AEC that we can leap towards
execute at @s facing entity @p[tag=playing,gamemode=adventure,team=game] feet positioned ~ ~.1 ~ run summon marker ^ ^ ^1 {Tags:["temp_marker"]}
execute as @e[type=marker,tag=temp_marker,limit=1] at @s run tp @s ~ ~.175 ~

##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[0] 100
execute as @e[type=marker,tag=temp_marker,limit=1] at @s store result score @s calculate run data get entity @s Pos[0] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=marker,tag=temp_marker,limit=1] calculate
##Reapplying motion
execute store result entity @s Motion[0] double -0.02 run scoreboard players get @s calculate

##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[1] 100
execute as @e[type=marker,tag=temp_marker,limit=1] at @s store result score @s calculate run data get entity @s Pos[1] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=marker,tag=temp_marker,limit=1] calculate



##Reapplying motion
execute store result entity @s Motion[1] double -0.02 run scoreboard players get @s calculate


##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[2] 100
execute as @e[type=marker,tag=temp_marker,limit=1] at @s store result score @s calculate run data get entity @s Pos[2] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=marker,tag=temp_marker,limit=1] calculate
##Reapplying motion
execute store result entity @s Motion[2] double -0.02 run scoreboard players get @s calculate


##Flipping our rotation (for whatever reason it seemed to always make them look the wrong way.)
execute store result score @s calculate run data get entity @s Rotation[0] 10
scoreboard players add @s calculate 1800
execute store result entity @s Rotation[0] float 0.15 run scoreboard players get @s calculate

##Killing AEC
kill @e[type=marker,tag=temp_marker]



##Removing tags
tag @s remove temp

# kill @p[team=game]
##sound 
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.33 0
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.33 0
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.33 0

particle happy_villager ~ ~1 ~ 0.2 0.4 0.2 0 25