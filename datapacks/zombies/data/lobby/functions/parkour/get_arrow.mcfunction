##called to give us our arrow
clear @s tipped_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},x=0,y=66,z=0,distance=..500]

item replace entity @s hotbar.0 with tipped_arrow{CustomPotionColor:6717527,display:{Name:'[{"text":"Drop","color":"green","italic":false},{"text":" to reset.","color":"gray"}]'},HideFlags:255}