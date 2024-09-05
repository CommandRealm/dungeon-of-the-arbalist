
###message
execute unless data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore" run function help:5d82d129b13e15f7bd37e3bb4908ce8b100b9aa2ce869d2c143a41122f8ff744

##Show crossbow details.
scoreboard players operation $calculate calculate = @s crossbow_id
execute store result score @s crossbow_id run data get entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] Item.components."minecraft:custom_data".crossbow_id
function game:mechanics/get_crossbow_details_from_shop
scoreboard players operation @s crossbow_id = $calculate calculate


##tag
tag @s add shown_item_message
scoreboard players set @s desc_delay 20
##sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.15

return 1