##Called when we shoot a crossbow
scoreboard players reset @s shoot_crossbow
execute store result score @s arrow_delay run data get entity @s Inventory[0].tag.delay

##clear arrow
clear @s arrow

##Removing one from quiver 
scoreboard players remove @s quiver 1
execute if entity @s[scores={quiver=..0}] store result score @s arrow_delay run data get entity @s Inventory[0].tag.reload_delay
execute if entity @s[scores={quiver=..0}] run scoreboard players set @s reload_percent -1

##Storing reload delay every time we shoot. (so that we can offhand the flint later and know what our delay should be.)
execute store result score @s store_reload run data get entity @s Inventory[0].tag.reload_delay

##sounds
playsound minecraft:item.crossbow.loading_start master @s[scores={quiver=..0}] ~ ~ ~ 1000 0.75
playsound minecraft:item.axe.strip master @s[scores={quiver=..0}] ~ ~ ~ 1 0.75

##Clear crossbow
clear @s crossbow


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

##Adding effect that stores the ID
data modify entity @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] custom_potion_effects prepend value {id:"minecraft:dolphins_grace",amplifier:0b,duration:2,show_particles:0b}
##Changing the amplifier to be our ID
execute store result entity @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] custom_potion_effects[{id:"minecraft:dolphins_grace"}].amplifier byte 1 run scoreboard players get @s id

##Copying id
scoreboard players operation @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] id = @s id


##adding times shot
scoreboard players add @s times_shot 1

##Specific crossbow shootings
execute if score @s crossbow_id matches 43 run function game:mechanics/shoot_specific/debris
execute if score @s crossbow_id matches 51 run function game:mechanics/shoot_specific/electrostatic
execute if score @s crossbow_id matches 52 run function game:mechanics/shoot_specific/grounded
##execute if score @s crossbow_id matches 62 run function game:mechanics/shoot_specific/radioactive

##Tagging arrow
tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,tag=!tagged_arrow] add player_arrow
tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,tag=!tagged_arrow] add tagged_arrow


##Removing tags
tag @s remove shot_bow
tag @e[type=arrow] remove temporary_match_0
tag @e[type=arrow] remove temporary_match_1
tag @e[type=arrow] remove temporary_match_2
tag @e[type=arrow] remove temporary_match_3

##stat 
execute unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_shots 1
scoreboard players add @s local_shots 1






