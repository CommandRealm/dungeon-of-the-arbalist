##called to give us the no arrow indicator
kill @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:stick"}}]
clear @s minecraft:stick
item replace entity @s hotbar.7 with minecraft:stick[minecraft:custom_name='""',minecraft:hide_additional_tooltip={}]
return 1