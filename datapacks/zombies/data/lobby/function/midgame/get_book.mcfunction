##Clears and kills books and then gives it to self
clear @s minecraft:knowledge_book
kill @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:knowledge_book"}}]
item replace entity @s hotbar.4 with minecraft:knowledge_book[minecraft:custom_name='{"bold":true,"color":"white","extra":[{"bold":false,"color":"dark_green","text":" to spectate."}],"italic":false,"text":"Click"}',minecraft:lore=['{"color":"gray","italic":false,"text":"Drop to reset your lobby position."}'],minecraft:recipes=[],minecraft:custom_data={not_clickable:1}]

return 1