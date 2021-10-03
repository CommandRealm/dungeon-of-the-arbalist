##called to give us the no arrow indicator
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5]
clear @s stick
item replace entity @s hotbar.7 with stick{HideFlags:63,display:{Name:'[{"text":""}]'}}