##called to see what we dropped

execute if entity @e[type=item,distance=..5,nbt={Item:{tag:{droppable:1b}}}] run function game:shops/items/check_thrown_item

##score reset
scoreboard players reset @s drop