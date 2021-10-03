##called to give us a arrow
clear @s arrow
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..10]
item replace entity @s hotbar.7 with arrow