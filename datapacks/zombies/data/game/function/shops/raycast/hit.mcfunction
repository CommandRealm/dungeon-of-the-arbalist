##Called when our raycast hits a shop item




##temporary tag
tag @s add temporary_tag


##if it's a stat booster, make sure it's not maxed out.
# execute as @e[type=item,sort=nearest,limit=1,tag=shop_item] at @s if data entity @s {Item:{tag:{stat_boost:1b}}} run function game:shops/raycast/check_stat_boosts

##showing item.
function help:9a3e0ef14f0706155948dbefc691b47f92cd73dcdbd4f147267eca8a81a0adc1



##tagging nearest item
tag @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] add temporary_tag

##showing price
execute as @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] at @s unless entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run title @p[tag=temporary_tag,tag=!filled_hotbar,tag=!play_alternate_title] subtitle [{"text":"Drop to buy this item for ","color":"gray","type":"text"},{"score":{"objective":"item_price","name":"@e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1]"},"color":"yellow","bold":true,"type":"score"},{"text":" treasure","color":"gold","type":"text"}]
execute as @e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1] at @s if entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run title @p[tag=temporary_tag,tag=!filled_hotbar,tag=!play_alternate_title] subtitle [{"text":"Drop to buy this item for ","color":"gray","type":"text"},{"score":{"objective":"item_price","name":"@e[type=minecraft:item,tag=shop_item,sort=nearest,limit=1]"},"color":"yellow","bold":true,"type":"score"},{"text":" treasure","color":"gold","type":"text"},{"text":" + your crossbow","color":"red","type":"text"}]

execute if entity @s[tag=filled_hotbar] unless entity @e[type=minecraft:item,tag=temporary_tag,tag=!play_alternate_title,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] run title @s subtitle [{"text":"⚠ ","color":"yellow","type":"text"},{"text":"Your hotbar is full","color":"red","type":"text"}]
execute if entity @s[tag=filled_hotbar] unless entity @e[type=minecraft:item,tag=temporary_tag,tag=!play_alternate_title,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] run title @s subtitle [{"text":"You cannot purchase this item.","color":"gray","type":"text"}]
##Waiting for the player to sneak
execute if entity @s[tag=!shown_item_message,predicate=minecraft:sneaking] run function game:shops/raycast/check_sneak





##Seeing if we dropped our crossbow.
execute unless entity @e[type=minecraft:item,tag=temporary_tag,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] if score @s[tag=!filled_hotbar] try_purchase matches 1.. run function game:shops/raycast/try_purchase

##If we have a full hotbar, try to purchase, it's not a crossbow, play noise
execute unless entity @e[type=minecraft:item,tag=temporary_tag,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] if score @s[tag=filled_hotbar] try_purchase matches 1.. run function game:shops/raycast/not_enough_treasure

execute if entity @e[type=minecraft:item,tag=temporary_tag,sort=nearest,limit=1,nbt={Item:{id:"minecraft:crossbow"}}] if score @s try_purchase matches 1.. run function game:shops/raycast/try_purchase

##giving us did you know message
execute if entity @s[x=0,y=66,z=0,distance=500..,tag=!seen_info_message_1] if data entity @e[type=minecraft:item,tag=shop_item,tag=temporary_tag,sort=nearest,limit=1] Item.components."minecraft:lore" run function game:did_you_know/crouch_while_looking_at_items

tag @e[type=minecraft:item,tag=temporary_tag,sort=nearest,limit=1] remove temporary_tag
tag @a remove temporary_tag_2



return 1