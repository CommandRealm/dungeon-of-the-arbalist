##Clears and kills books and then gives it to self
clear @s knowledge_book
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..5]
item replace entity @s hotbar.4 with knowledge_book{not_clickable:1,Recipes:[],display:{Name:'[{"text":"Click","color":"drak_green","bold":true,"italic":false},{"text":" to spectate.","color":"dark_green","bold":false}]',Lore:['[{"text":"Drop to reset your lobby position.","color":"gray","italic":false}]']}}
