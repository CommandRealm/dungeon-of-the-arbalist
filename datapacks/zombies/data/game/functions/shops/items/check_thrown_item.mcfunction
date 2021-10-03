##Adding tag so we can be referenced later without @s
tag @s add temporary_tag

###UUID 0

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[0] 1
##Storing Arrow Thrower UUID in calculate
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s store result score @s calculate run data get entity @s Thrower[0] 1
##Adding tag if the UUID matches
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s if score @s calculate = @p[tag=temporary_tag] calculate run tag @s add temporary_match_0

###UUID 1

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[1] 1
##Storing Arrow Thrower UUID in calculate
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s store result score @s calculate run data get entity @s Thrower[1] 1
##Adding tag if the UUID matches
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s if score @s calculate = @p[tag=temporary_tag] calculate run tag @s add temporary_match_1

###UUID 2

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[2] 1
##Storing Arrow Thrower UUID in calculate
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s store result score @s calculate run data get entity @s Thrower[2] 1
##Adding tag if the UUID matches
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s if score @s calculate = @p[tag=temporary_tag] calculate run tag @s add temporary_match_2

###UUID 3

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[3] 1
##Storing Arrow Thrower UUID in calculate
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s store result score @s calculate run data get entity @s Thrower[3] 1
##Adding tag if the UUID matches
execute as @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] at @s if score @s calculate = @p[tag=temporary_tag] calculate run tag @s add temporary_match_3


##If we found our item
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1] unless entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{Count:1b}}] run function game:shops/items/check_throw_item_count
execute if entity @e[type=item,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3,limit=1,nbt={Item:{Count:1b}}] run function game:shops/items/throw_item



##Removing tags
tag @s remove temporary_tag
tag @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] remove temporary_match_0
tag @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] remove temporary_match_1
tag @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] remove temporary_match_2
tag @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] remove temporary_match_3