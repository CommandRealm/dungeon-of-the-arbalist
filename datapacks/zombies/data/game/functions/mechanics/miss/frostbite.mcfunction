##Called when we miss with the frostbite crossbow.

##Temp tag
tag @s add temporary_tag

execute as @e[tag=enemy] at @s if score @s targetting_id = @p[tag=temporary_tag] id run function game:mechanics/miss/clear_frostbitten_enemy

##removing tag
tag @s remove temporary_tag