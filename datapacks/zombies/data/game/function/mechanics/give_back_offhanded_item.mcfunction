##called to give us back our offhanded item.
##execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]},tag=!voted_end] run scoreboard players set @s end 1
setblock 0 2 0 minecraft:air
setblock 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:structure_void",count:1,Slot:0b}]} destroy
data modify block 0 2 0 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
data modify block 0 2 0 Items[{Slot:0b}].components set from entity @s Inventory[{Slot:-106b}].components
data modify block 0 2 0 Items[{Slot:0b}].count set from entity @s Inventory[{Slot:-106b}].count

##clearing offhand
item replace entity @s weapon.offhand with minecraft:air

##giving item back
execute unless block 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:structure_void",count:1,Slot:0b}]} run loot replace entity @s weapon.mainhand mine 0 2 0 minecraft:stone[minecraft:custom_data={drop_contents:1b}]

return 1