##Main function for the castle map.

##If a key exists
execute if entity @e[type=minecraft:item,tag=key] run function game:adventure/castle/key/main

execute as @a[gamemode=adventure,tag=playing,nbt={SelectedItem:{id:"minecraft:compass"}}] at @s run function game:adventure/compass/start


execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:witch_shopkeeper=false}] at @s unless score $difficulty settings matches -1 if entity @e[type=minecraft:witch,distance=..7,tag=shopkeeper,team=enemy] run advancement grant @s only journal:witch_shopkeeper
return 1