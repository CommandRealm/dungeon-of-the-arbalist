##called to give us the details of the item.

##sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.15


###message
function help:5d82d129b13e15f7bd37e3bb4908ce8b100b9aa2ce869d2c143a41122f8ff744

function help:77cd0ae4f257ec4afb72b69bbfdb7e769c24a01f10e0d3adfea390b15d504593
execute if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore"[1] run function help:b4b4f254df9fd566cfa250ca7984ab1eb03d8d144ec9629df99d96f75729695c
execute if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore"[2] run function help:c4dacd6faceda8b59b55d5e0a0f4c8af4b78b41bdde9bdc17e30bfbb32390509
execute if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore"[3] run function help:25a52e27267c6212a2ca5df9f5d86bd022cc66ccbe446c53e38ec15cde036600
execute if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore"[4] run function help:0c4bd4ef77df720095f14b3417a5404b71e4fe7ac618dee0e7e6005dbe969601




##tag
tag @s add shown_item_message
scoreboard players set @s desc_delay 20
return 1