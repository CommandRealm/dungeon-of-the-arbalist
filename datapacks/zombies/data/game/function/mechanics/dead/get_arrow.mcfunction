##called to give us a arrow
clear @s minecraft:arrow
kill @e[type=minecraft:item,distance=..10,nbt={Item:{id:"minecraft:arrow"}}]
item replace entity @s hotbar.7 with minecraft:arrow
return 1