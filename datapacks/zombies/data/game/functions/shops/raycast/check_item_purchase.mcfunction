# called when we are able to purchase an item to make sure we can
execute as @e[type=item,sort=nearest,limit=1,tag=shop_item] if data entity @s Item{id:"minecraft:crossbow"} run tag @r add crossbow_purchase

execute if entity @a[tag=crossbow_purchase,tag=!trial_default] if entity @s[tag=sneak_crossbow_purchase,predicate=minecraft:sneaking] run function game:shops/raycast/purchase
execute if entity @a[tag=crossbow_purchase,tag=!trial_default] if entity @s[tag=sneak_crossbow_purchase,predicate=!minecraft:sneaking] run function game:shops/raycast/not_enough_treasure


execute if entity @a[tag=crossbow_purchase,tag=!trial_default] if entity @s[tag=!sneak_crossbow_purchase] run function game:shops/raycast/purchase
execute unless entity @a[tag=crossbow_purchase] run function game:shops/raycast/purchase

tag @a remove crossbow_purchase
