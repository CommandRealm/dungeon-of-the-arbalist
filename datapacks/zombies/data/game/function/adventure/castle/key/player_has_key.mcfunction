##called when a player has the key.

execute if entity @a[gamemode=adventure,x=5006,y=89,z=23,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"pink"}}}]}] as @e[type=minecraft:marker,x=5006,y=89,z=23,distance=..2,tag=doorway] at @s run function game:adventure/door/open

execute if entity @a[gamemode=adventure,x=4984,y=79,z=37,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"blue"}}}]}] as @e[type=minecraft:marker,x=4984,y=79,z=37,distance=..2,tag=doorway] at @s run function game:adventure/door/open
return 1