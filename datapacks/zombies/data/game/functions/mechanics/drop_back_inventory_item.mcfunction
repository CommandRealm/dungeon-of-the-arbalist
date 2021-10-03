##called to drop the item out of the back of our inventory

setblock 0 2 0 air
setblock 0 2 0 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}

data modify block 0 2 0 Items[0].id set from entity @s Inventory[{Slot:9b}].id
data modify block 0 2 0 Items[0].tag set from entity @s Inventory[{Slot:9b}].tag
data modify block 0 2 0 Items[0].Count set from entity @s Inventory[{Slot:9b}].Count
loot spawn ~ ~ ~ mine 0 2 0 stone{drop_contents:true}
item replace entity @s inventory.0 with air