##Called to place the price markers.

##killng nearby ones
kill @e[type=armor_stand,tag=armor_stand_door_text_marker,distance=..8]
kill @e[type=area_effect_cloud,tag=door_text,distance=..8]

execute if entity @s[tag=east_west] run summon armor_stand ~1.75 64 ~ {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["armor_stand_door_text_marker","die_between_games"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["door_text","die_between_games","temporary_tag"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}
execute if entity @s[tag=east_west] run summon armor_stand ~-1.75 64 ~ {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["armor_stand_door_text_marker","die_between_games"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["door_text","die_between_games","temporary_tag"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}

execute if entity @s[tag=north_south] run summon armor_stand ~ 64 ~1.75 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["armor_stand_door_text_marker","die_between_games"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["door_text","die_between_games","temporary_tag"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}
execute if entity @s[tag=north_south] run summon armor_stand ~ 64 ~-1.75 {Invisible:1b,Small:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["armor_stand_door_text_marker","die_between_games"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["door_text","die_between_games","temporary_tag"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}

##Updating name
function game:default/door/late_generation/update_boss_door_name

##Setting our increment score
function game:door/get_price_increment

##raycast tag
tag @s add raycast