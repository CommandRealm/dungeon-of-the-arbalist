##Called to start the circle attack.

##Randomizing the guardians start location
execute store result score $rand random run loot insert 0 1 0 loot random:8
function random:reset_chest
execute if score $rand random matches 0 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 0 ~
execute if score $rand random matches 1 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 45 ~
execute if score $rand random matches 2 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 90 ~
execute if score $rand random matches 3 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 135 ~
execute if score $rand random matches 4 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 180 ~
execute if score $rand random matches 5 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 225 ~
execute if score $rand random matches 6 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 270 ~
execute if score $rand random matches 7 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ 315 ~

##Summoing the guardian aec
execute at @e[type=elder_guardian,tag=boss] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["guardian_aec"]}
tp @e[type=area_effect_cloud,tag=guardian_aec] @e[type=elder_guardian,tag=boss,limit=1]

##Sound
execute at @e[type=elder_guardian,tag=boss] run playsound minecraft:entity.elder_guardian.ambient_land master @a ~ ~ ~ 1.5 0
execute at @e[type=elder_guardian,tag=boss] run playsound minecraft:entity.elder_guardian.ambient_land master @a ~ ~ ~ 1.5 0.75


##Randomizing the direction
execute store result score $stat boss run loot insert 0 1 0 loot random:2
function random:reset_chest

##Timer
scoreboard players set $attack boss 200