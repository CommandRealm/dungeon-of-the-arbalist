##called when we shoot a bow

scoreboard players reset @s shoot_bow
scoreboard players set @s arrow_delay 60

##clear arrow
clear @s arrow


##iron bars
item replace entity @s hotbar.7 with iron_bars{HideFlags:63,display:{Name:'[{"text":""}]'}}



##Tagging arrow

##Adding tag so we can be referenced later without @s
tag @s add shot_bow


###UUID 0

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[0] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[0] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_0

###UUID 1

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[1] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[1] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_1

###UUID 2

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[2] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[2] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_2

###UUID 3

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[3] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[3] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_3

##Applying effects
execute as @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] at @s run data merge entity @s {custom_potion_effects:[{id:"minecraft:regeneration",duration:2,amplifier:20b},{id:"minecraft:luck",duration:2,amplifier:45b},{id:"minecraft:water_breathing",duration:2,amplifier:100b}],Tags:["player_arrow","dead_player_arrow","tagged_arrow"]}


##Copying id
scoreboard players operation @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] id = @s id




##Removing tags
tag @s remove shot_bow
tag @e[type=arrow] remove temporary_match_0
tag @e[type=arrow] remove temporary_match_1
tag @e[type=arrow] remove temporary_match_2
tag @e[type=arrow] remove temporary_match_3







