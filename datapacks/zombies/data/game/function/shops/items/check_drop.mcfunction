##called to see what we dropped

execute if entity @e[type=minecraft:item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{droppable:1b}}}}] run function game:shops/items/check_thrown_item

##score reset
scoreboard players reset @s drop
return 1