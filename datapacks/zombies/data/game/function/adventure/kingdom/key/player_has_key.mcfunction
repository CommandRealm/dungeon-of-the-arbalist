##Called when a player has the key

execute if entity @a[gamemode=adventure,x=3039,y=91,z=21,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"lookout"}}}]}] as @e[type=minecraft:marker,x=3039,y=91,z=21,distance=..2,tag=doorway] at @s run function game:adventure/door/open

execute if entity @a[gamemode=adventure,x=3058,y=70,z=109,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"storage"}}}]}] as @e[type=minecraft:marker,x=3058,y=70,z=109,distance=..2,tag=doorway] at @s run function game:adventure/door/open

execute if entity @a[gamemode=adventure,x=3160,y=73,z=113,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"storage"}}}]}] as @e[type=minecraft:marker,x=3160,y=73,z=113,distance=..2,tag=doorway] at @s run function game:adventure/door/open

execute if entity @a[gamemode=adventure,x=3160,y=72,z=192,distance=..5,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b,key:"crypt"}}}]}] as @e[type=minecraft:marker,x=3160,y=72,z=192,distance=..2,tag=doorway] at @s run function game:adventure/door/open


return 1