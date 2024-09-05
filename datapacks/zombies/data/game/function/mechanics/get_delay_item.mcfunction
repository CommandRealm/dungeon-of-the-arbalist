##called to give us our delay item

##If the flint is in our offhand, reload
execute if entity @s[nbt={Inventory:[{id:"minecraft:flint",Slot:-106b}]}] run function game:mechanics/reload



##clear
clear @s minecraft:flint

##getting crossbows
execute if entity @s run item replace entity @s hotbar.0 with minecraft:flint[minecraft:custom_name='{"color":"gray","extra":[{"color":"dark_gray","text":" . . ."}],"italic":false,"text":"Reloading"}',minecraft:hide_additional_tooltip={}]

##removing temporary tag
tag @s remove temporary_tag

##killing dropped items
kill @e[type=minecraft:item,distance=..15,nbt={Item:{id:"minecraft:flint",count:1}}]
return 1