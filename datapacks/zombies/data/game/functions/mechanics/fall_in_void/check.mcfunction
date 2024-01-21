# called when we fall in the void

execute unless entity @s[nbt={Inventory:[{id:"minecraft:lead",tag:{shop_item:1b}}]}] run kill @s
execute if entity @s[nbt={Inventory:[{id:"minecraft:lead",tag:{shop_item:1b}}]}] run function game:shops/items/use_rope
