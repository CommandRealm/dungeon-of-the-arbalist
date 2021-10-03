##called to give us our delay item

##If the flint is in our offhand, reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:flint"}]}] run function game:mechanics/reload



##clear
clear @s flint

##getting crossbows
execute if entity @s run item replace entity @s hotbar.0 with flint{HideFlags:63,display:{Name:'[{"text":"Reloading","color":"gray","italic":false},{"text":" . . .","color":"dark_gray"}]'}}

##removing temporary tag
tag @s remove temporary_tag

##killing dropped items
kill @e[type=item,nbt={Item:{id:"minecraft:flint",Count:1b}},distance=..15]