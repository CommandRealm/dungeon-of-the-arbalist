##called to give us our delay item

##clear
clear @s leather

##getting crossbows
execute if entity @s run item replace entity @s hotbar.0 with leather{HideFlags:63,display:{Name:'[{"text":"Filling quiver","color":"#e58e42","italic":false},{"text":" . . .","color":"#ac6f39"}]'}}


##killing dropped items
kill @e[type=item,nbt={Item:{id:"minecraft:leather",Count:1b}},distance=..15]