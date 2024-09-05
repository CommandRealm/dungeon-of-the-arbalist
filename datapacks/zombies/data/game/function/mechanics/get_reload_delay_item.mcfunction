##called to give us our delay item

##clear
clear @s minecraft:leather

##getting crossbows
execute if entity @s run item replace entity @s hotbar.0 with minecraft:leather[minecraft:custom_name='{"color":"#e58e42","extra":[{"color":"#ac6f39","text":" . . ."}],"italic":false,"text":"Filling quiver"}',minecraft:hide_additional_tooltip={}]


##killing dropped items
kill @e[type=minecraft:item,distance=..15,nbt={Item:{id:"minecraft:leather",count:1}}]
return 1