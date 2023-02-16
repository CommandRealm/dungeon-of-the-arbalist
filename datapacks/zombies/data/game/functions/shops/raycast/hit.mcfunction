##Called when our raycast hits a shop item




##temporary tag
tag @s add temporary_tag


##if it's a stat booster, make sure it's not maxed out.
# execute as @e[type=item,sort=nearest,limit=1,tag=shop_item] at @s if data entity @s {Item:{tag:{stat_boost:1b}}} run function game:shops/raycast/check_stat_boosts

##showing item.
title @s[tag=!temporary_tag_2,tag=!play_alternate_title] title [{"nbt":"Item.tag.display.Name","entity":"@e[type=item,sort=nearest,limit=1,tag=shop_item]","interpret":true}]



##tagging nearest item
tag @e[type=item,sort=nearest,limit=1,tag=shop_item] add temporary_tag

##showing price
execute as @e[type=item,sort=nearest,limit=1,tag=shop_item] at @s unless entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run title @p[tag=temporary_tag,tag=!filled_hotbar,tag=!play_alternate_title] subtitle [{"text":"Drop to buy this item for ","color":"gray"},{"score":{"objective":"item_price","name":"@e[type=item,sort=nearest,limit=1,tag=shop_item]"},"color":"yellow","bold":true},{"text":" treasure","color":"gold"}]
execute as @e[type=item,sort=nearest,limit=1,tag=shop_item] at @s if entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run title @p[tag=temporary_tag,tag=!filled_hotbar,tag=!play_alternate_title] subtitle [{"text":"Drop to buy this item for ","color":"gray"},{"score":{"objective":"item_price","name":"@e[type=item,sort=nearest,limit=1,tag=shop_item]"},"color":"yellow","bold":true},{"text":" treasure","color":"gold"},{"text":" + your crossbow","color":"red"}]

execute if entity @s[tag=filled_hotbar] unless entity @e[type=item,sort=nearest,limit=1,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}},tag=!play_alternate_title] run title @s subtitle [{"text":"⚠ ","color":"yellow"},{"text":"Your hotbar is full","color":"red"}]
execute if entity @s[tag=filled_hotbar] unless entity @e[type=item,sort=nearest,limit=1,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}},tag=!play_alternate_title] run title @s subtitle [{"text":"You cannot purchase this item.","color":"gray"}]
##Waiting for the player to sneak
execute if entity @s[predicate=minecraft:sneaking,tag=!shown_item_message] run function game:shops/raycast/check_sneak





##Seeing if we dropped our crossbow.
execute unless entity @e[type=item,sort=nearest,limit=1,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}}] if score @s[tag=!filled_hotbar] try_purchase matches 1.. run function game:shops/raycast/try_purchase

##If we have a full hotbar, try to purchase, it's not a crossbow, play noise
execute unless entity @e[type=item,sort=nearest,limit=1,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}}] if score @s[tag=filled_hotbar] try_purchase matches 1.. run function game:shops/raycast/not_enough_treasure

execute if entity @e[type=item,sort=nearest,limit=1,tag=temporary_tag,nbt={Item:{id:"minecraft:crossbow"}}] if score @s try_purchase matches 1.. run function game:shops/raycast/try_purchase

##giving us did you know message
execute if entity @s[tag=!seen_info_message_1,x=0,y=66,z=0,distance=500..] if data entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.display.Lore run function game:did_you_know/crouch_while_looking_at_items

tag @e[type=item,sort=nearest,limit=1,tag=temporary_tag] remove temporary_tag
tag @a remove temporary_tag_2


