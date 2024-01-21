##called to give us colored leggings.


##giving us the item
setblock 0 2 0 air
setblock 0 2 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,armor_piece:1b,AttributeModifiers:[{Name:"generic.armor",AttributeName:"generic.armor",Amount:0,UUID:[I; 300, 300, 300, 300]},{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:0,UUID:[I; 301, 301, 301, 301]}],HideFlags:255,display:{Name:'[{"text":"Leggings","italic":false,"color":"yellow"}]',color:0}}}]} destroy

execute store result block 0 2 0 Items[{Slot:0b}].tag.display.color int 1 run scoreboard players get @s color

##second unless is for if it's a crossbow because we don't want to give ourself a crossbow.
loot replace entity @s armor.legs mine 0 2 0 stone{drop_contents:true}