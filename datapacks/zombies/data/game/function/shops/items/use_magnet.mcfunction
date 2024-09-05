##called to use the magnet
tag @s add temporary_tag
execute as @e[type=minecraft:item,distance=..9.5,nbt={Item:{components:{"minecraft:custom_data":{treasure:1}}}}] at @s facing entity @p[tag=temporary_tag] eyes run tp @s ^ ^ ^0.5
execute as @e[type=minecraft:item,distance=..9.5,nbt={Item:{components:{"minecraft:custom_data":{treasure:1}}}}] at @s run data modify entity @s NoGravity set value 1b
tag @s remove temporary_tag
return 1