##Called to check our sneak.
execute if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore" run function game:shops/raycast/show_details

##If we need to show what the crossbow can be upgraded with:
execute if entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] run function game:shops/raycast/show_crossbow_details

return 1