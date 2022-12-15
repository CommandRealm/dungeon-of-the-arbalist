##called when a player has the key.

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"pink"}}]},x=5006,y=89,z=23,distance=..5] as @e[type=marker,tag=doorway,x=5006,y=89,z=23,distance=..2] at @s run function game:adventure/door/open

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"blue"}}]},x=4984,y=79,z=37,distance=..5] as @e[type=marker,tag=doorway,x=4984,y=79,z=37,distance=..2] at @s run function game:adventure/door/open