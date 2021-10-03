##called to give us back our offhanded item.
##execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]},tag=!voted_end] run scoreboard players set @s end 1
setblock 0 2 0 air
setblock 0 2 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} destroy
data modify block 0 2 0 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
data modify block 0 2 0 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag
data modify block 0 2 0 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count

##clearing offhand
item replace entity @s weapon.offhand with air

##giving item back
execute unless block 0 2 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b}]} run loot replace entity @s weapon.mainhand mine 0 2 0 stone{drop_contents:true}
