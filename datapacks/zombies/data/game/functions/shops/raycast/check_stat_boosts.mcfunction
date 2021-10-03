##called to check the stat boosters
execute if score @p[tag=temporary_tag] boost_health matches 5 if data entity @s {Item:{id:"minecraft:red_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2
execute if score @p[tag=temporary_tag] boost_quiver matches 5 if data entity @s {Item:{id:"minecraft:orange_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2
execute if score @p[tag=temporary_tag] boost_treasure matches 5 if data entity @s {Item:{id:"minecraft:yellow_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2
execute if score @p[tag=temporary_tag] boost_damage matches 5 if data entity @s {Item:{id:"minecraft:purple_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2
execute if score @p[tag=temporary_tag] boost_speed matches 5 if data entity @s {Item:{id:"minecraft:light_blue_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2
execute if score @p[tag=temporary_tag] boost_revive matches 5 if data entity @s {Item:{id:"minecraft:lime_dye"}} run tag @p[tag=temporary_tag] add temporary_tag_2

##title
title @p[tag=temporary_tag,tag=temporary_tag_2] title [{"text":"⚠","color":"yellow"},{"text":" Maxed out booster","color":"red"}]