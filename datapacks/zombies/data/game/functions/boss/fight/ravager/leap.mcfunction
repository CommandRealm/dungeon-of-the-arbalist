##Called when a zombie should leap.


##Summoning AEC that we can leap towards
execute facing entity @p[tag=playing,gamemode=adventure,team=game] feet positioned ~ ~.1 ~ run summon area_effect_cloud ^ ^ ^1 {Duration:1,Tags:["leap_marker"]}

##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[0] 100
execute store result score @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate run data get entity @e[type=area_effect_cloud,tag=leap_marker,limit=1] Pos[0] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate
##Reapplying motion
execute store result entity @s Motion[0] double -0.025 run scoreboard players get @s calculate

##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[1] 100
execute store result score @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate run data get entity @e[type=area_effect_cloud,tag=leap_marker,limit=1] Pos[1] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate
##Reapplying motion
execute store result entity @s Motion[1] double -0.03 run scoreboard players get @s calculate

##Storing both of our positions in calculate
execute store result score @s calculate run data get entity @s Pos[2] 100
execute store result score @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate run data get entity @e[type=area_effect_cloud,tag=leap_marker,limit=1] Pos[2] 100
##Subtracting
scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=leap_marker,limit=1] calculate
##Reapplying motion
execute store result entity @s Motion[2] double -0.025 run scoreboard players get @s calculate

##Flipping our rotation (for whatever reason it seemed to always make them look the wrong way.)
execute store result score @s calculate run data get entity @s Rotation[0] 10
scoreboard players add @s calculate 1800
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get @s calculate

##Killing AEC
kill @e[type=area_effect_cloud,tag=leap_marker]


##Sound
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.5 0.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.5 0.7


##sound
playsound minecraft:entity.ravager.celebrate master @a ~ ~ ~


##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 400
