##called when the revive timer is over.

##tag
tag @e[type=minecraft:area_effect_cloud,tag=temporary_tag] remove temporary_tag
tag @s add temporary_tag

##turning the player into a ghost

execute as @a[team=fallen] at @s run scoreboard players operation @s calculate = @s id
execute as @a[team=fallen] at @s run scoreboard players operation @s calculate -= @e[type=minecraft:area_effect_cloud,tag=temporary_tag,sort=arbitrary,limit=1] id

tag @a remove temporary_tag
tag @a[tag=playing,scores={calculate=0},team=fallen] add temporary_tag
execute if entity @a[tag=in_boss_room,tag=playing] run tag @p[tag=temporary_tag,tag=!in_boss_room] add in_boss_room
tp @p[tag=temporary_tag,tag=!in_boss_room] @e[type=minecraft:area_effect_cloud,tag=revive_death_spot,scores={calculate=0},sort=arbitrary,limit=1]

##If we're in the boss room
tp @p[tag=temporary_tag,tag=in_boss_room] @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=random,limit=1]
execute as @p[tag=temporary_tag] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]
team join enemy @p[tag=temporary_tag]
effect give @p[tag=temporary_tag] minecraft:weakness 1000000 255 true
gamemode adventure @p[tag=temporary_tag]
clear @p[tag=temporary_tag]
tag @p[tag=temporary_tag] remove mechanics

##Money bag
execute at @p[tag=temporary_tag] run summon minecraft:item ~ ~ ~ {Tags:["die_between_games","temporary_tag"],PickupDelay:20,Item:{id:"minecraft:leather_helmet",components:{"minecraft:custom_data":{treasure:1,treasure_amount:0}},count:1},Glowing:1b}

##giving it our treasure score
execute store result entity @e[type=minecraft:item,tag=temporary_tag,limit=1] Item.components."minecraft:custom_data".treasure_amount int 1 run scoreboard players get @p[tag=temporary_tag] treasure


##joining team for glowing color
team join yellow @e[type=minecraft:item,tag=temporary_tag,limit=1]


##Removing tag
tag @e[type=minecraft:item,tag=temporary_tag] remove temporary_tag


effect give @p[tag=temporary_tag] minecraft:invisibility 1000000 255 true
effect give @p[tag=temporary_tag] minecraft:weakness 100000 255 true
effect give @p[tag=temporary_tag] minecraft:resistance 100000 0 true

title @p[tag=temporary_tag] title [{"text":"","type":"text"}]
title @p[tag=temporary_tag] subtitle [{"text":"You died.","color":"red","type":"text"}]

execute if entity @p[tag=temporary_tag] run tellraw @a[tag=playing] [{"selector":"@p[tag=temporary_tag]","type":"selector"},{"text":" died.","color":"gray","type":"text"}]

##sound
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0


##kills
execute positioned ~ ~2.0 ~ run kill @e[type=minecraft:area_effect_cloud,tag=revive_name_text,sort=nearest,limit=1]
execute positioned ~ ~1.75 ~ run kill @e[type=minecraft:area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1]
execute positioned ~ ~1.5 ~ run kill @e[type=minecraft:area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1]
kill @e[type=minecraft:armor_stand,tag=revive_point,sort=nearest,limit=1]
tag @s add revive_death_spot
tag @s remove revive_aec


##removing temporary tags
tag @a remove temporary_tag
tag @s remove temporary_tag


return 1