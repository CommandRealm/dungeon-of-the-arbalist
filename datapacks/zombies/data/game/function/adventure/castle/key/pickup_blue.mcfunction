##Called when you pickup the blue key.

kill @e[type=minecraft:item,tag=!blue_key,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @s minecraft:tripwire_hook
give @s[tag=!filled_hotbar] minecraft:tripwire_hook[minecraft:custom_name='{"bold":true,"color":"blue","italic":false,"text":"Blue Key"}',minecraft:custom_data={key_item:1b,key:"blue"}]

execute if score @s objective matches ..2 run function game:adventure/new_objective






return 1