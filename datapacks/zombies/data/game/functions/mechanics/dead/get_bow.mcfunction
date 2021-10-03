##called to give us a bow
clear @s bow
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..10]
item replace entity @s hotbar.0 with bow{display:{Name:'[{"text":"Player ","color":"green","italic":false},{"text":"Healing","color":"red"},{"text":" Bow","color":"gray","italic":false}]'},HideFlags:63,Unbreakable:1b}