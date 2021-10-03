##called to give us the details of the item.

##sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.15


###message
tellraw @s ["",{"text":"▷ ","color":"gold","bold":true},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret": true},{"text":" ◁","color":"gold","bold":true}]

tellraw @s [{"nbt":"Item.tag.display.Lore[0]","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]
execute if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore[1] run tellraw @s [{"nbt":"Item.tag.display.Lore[1]","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]
execute if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore[2] run tellraw @s [{"nbt":"Item.tag.display.Lore[2]","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]
execute if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore[3] run tellraw @s [{"nbt":"Item.tag.display.Lore[3]","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]
execute if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore[4] run tellraw @s [{"nbt":"Item.tag.display.Lore[4]","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]




##tag
tag @s add shown_item_message
scoreboard players set @s desc_delay 20