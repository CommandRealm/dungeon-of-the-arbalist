##Function is to see if it should start the countdown

##Toggle ready if player clicked
execute as @a[scores={pregame_click=1..}] at @s run function lobby:midgame/click

##Check if player needs book
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:4b}]}] run function lobby:midgame/get_book


##When someone drops their book
execute as @a[x=0,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:pregame/drop_ready_book
return 1