##Main function for the castle map.

##If a key exists
execute if entity @e[type=item,tag=key] run function game:adventure/castle/key/main

execute as @a[tag=playing,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:compass"}}] at @s run function game:adventure/compass/start


execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:witch_shopkeeper=false}] at @s unless score $difficulty settings matches -1 if entity @e[type=witch,tag=shopkeeper,team=enemy,distance=..7] run advancement grant @s only journal:witch_shopkeeper