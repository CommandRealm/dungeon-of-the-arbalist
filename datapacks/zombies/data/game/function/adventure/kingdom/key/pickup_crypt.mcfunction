##Called when you pickup the blue key.

kill @e[type=minecraft:item,tag=!crypt_key,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @s minecraft:tripwire_hook[minecraft:custom_data={key:"crypt"}]
give @s[tag=!filled_hotbar] minecraft:tripwire_hook[minecraft:custom_name='{"bold":true,"color":"red","italic":false,"text":"Crypt Key"}',minecraft:custom_data={key_item:1b,key:"crypt"}]






execute if entity @s[gamemode=adventure,tag=playing,scores={objective=..2}] at @s run function game:adventure/new_objective
return 1