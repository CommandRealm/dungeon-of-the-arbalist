##called to give us a bow
clear @s minecraft:bow
kill @e[type=minecraft:item,distance=..10,nbt={Item:{id:"minecraft:bow"}}]
item replace entity @s hotbar.0 with minecraft:bow[minecraft:custom_name='{"color":"green","extra":[{"color":"red","text":"Healing"},{"color":"gray","italic":false,"text":" Bow"}],"italic":false,"text":"Player "}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
return 1