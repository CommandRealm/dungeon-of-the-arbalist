##called to drop the item out of the back of our inventory

setblock 0 2 0 minecraft:air
setblock 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:stone",count:1,Slot:0b}]}

data modify block 0 2 0 Items[0].id set from entity @s Inventory[{Slot:9b}].id
data modify block 0 2 0 Items[0].components set from entity @s Inventory[{Slot:9b}].components
data modify block 0 2 0 Items[0].count set from entity @s Inventory[{Slot:9b}].count
loot spawn ~ ~ ~ mine 0 2 0 minecraft:stone[minecraft:custom_data={drop_contents:1b}]
item replace entity @s inventory.0 with minecraft:air
return 1