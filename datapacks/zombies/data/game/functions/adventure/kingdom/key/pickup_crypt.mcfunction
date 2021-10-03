##Called when you pickup the blue key.

kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}},tag=!crypt_key]
clear @s tripwire_hook{key:"crypt"}
give @s[tag=!filled_hotbar] tripwire_hook{key_item:1b,display:{Name:'[{"text":"Crypt Key","color":"red","italic":false,"bold":true}]'},key:"crypt"}






execute as @s[tag=playing,gamemode=adventure,scores={objective=..2}] at @s run function game:adventure/new_objective