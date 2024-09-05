##called to give us colored leggings.


##giving us the item
setblock 0 2 0 minecraft:air
setblock 0 2 0 minecraft:shulker_box{Items:[{id:"minecraft:leather_leggings",components:{"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:generic.armor",id:"minecraft:0000012c-0000-012c-0000-012c0000012c",amount:0.0d},{type:"minecraft:generic.knockback_resistance",id:"minecraft:0000012d-0000-012d-0000-012d0000012d",amount:0.0d}]},"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Leggings"}',"minecraft:dyed_color":{rgb:0},"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:hide_additional_tooltip":{},"minecraft:custom_data":{armor_piece:1b}},count:1,Slot:0b}]} destroy

execute store result block 0 2 0 Items[{Slot:0b}].components."minecraft:dyed_color".rgb int 1 run scoreboard players get @s color

##second unless is for if it's a crossbow because we don't want to give ourself a crossbow.
loot replace entity @s armor.legs mine 0 2 0 minecraft:stone[minecraft:custom_data={drop_contents:1b}]
return 1