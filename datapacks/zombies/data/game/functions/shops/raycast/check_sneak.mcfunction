##Called to check our sneak.
execute if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore run function game:shops/raycast/show_details

##If we need to show what the crossbow can be upgraded with:
execute if entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}}] run function game:shops/raycast/show_crossbow_details
