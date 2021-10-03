##Called when we drop an item to reset our objectives

scoreboard players reset @s try_purchase
scoreboard players reset @s drop_key

##Killing any dropped crossbow that isn't a shop item
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},tag=!shop_item]