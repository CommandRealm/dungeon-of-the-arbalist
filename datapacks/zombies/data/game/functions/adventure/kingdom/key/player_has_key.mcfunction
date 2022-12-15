##Called when a player has the key

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"lookout"}}]},x=3039,y=91,z=21,distance=..5] as @e[type=marker,tag=doorway,x=3039,y=91,z=21,distance=..2] at @s run function game:adventure/door/open

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"storage"}}]},x=3058,y=70,z=109,distance=..5] as @e[type=marker,tag=doorway,x=3058,y=70,z=109,distance=..2] at @s run function game:adventure/door/open

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"storage"}}]},x=3160,y=73,z=113,distance=..5] as @e[type=marker,tag=doorway,x=3160,y=73,z=113,distance=..2] at @s run function game:adventure/door/open

execute if entity @a[tag=playing,team=game,gamemode=adventure,nbt={Inventory:[{tag:{key_item:1b,key:"crypt"}}]},x=3160,y=72,z=192,distance=..5] as @e[type=marker,tag=doorway,x=3160,y=72,z=192,distance=..2] at @s run function game:adventure/door/open

