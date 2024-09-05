# called to see if this item has an existent shopkeeper
# comparing scores
tag @s add temporary_tag
execute as @e[tag=shopkeeper,team=enemy] at @s run scoreboard players operation @s calculate = @s id
execute as @e[tag=shopkeeper,team=enemy] at @s run scoreboard players operation @s calculate -= @e[type=minecraft:item,tag=temporary_tag] id
tag @s remove temporary_tag

# seeing if we have a shopkeeper
execute unless entity @e[tag=shopkeeper,scores={calculate=0},team=enemy] run function game:shops/shopkeeper/steal/convert_to_free
return 1