
###message
execute unless data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore run tellraw @s ["",{"text":"▷ ","color":"gold","bold":true},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret": true},{"text":" ◁","color":"gold","bold":true}]

##Show crossbow details.
scoreboard players operation $calculate calculate = @s crossbow_id
execute store result score @s crossbow_id run data get entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}}] Item.tag.crossbow_id
function game:mechanics/get_crossbow_details_from_shop
scoreboard players operation @s crossbow_id = $calculate calculate


##tag
tag @s add shown_item_message
scoreboard players set @s desc_delay 20
##sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.15
