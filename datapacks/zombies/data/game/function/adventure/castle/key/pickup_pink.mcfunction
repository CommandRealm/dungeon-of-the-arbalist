##Called when you pickup the pink key.

kill @e[type=minecraft:item,tag=!pink_key,nbt={Item:{id:"minecraft:tripwire_hook"}}]
clear @s minecraft:tripwire_hook
give @s[tag=!filled_hotbar] minecraft:tripwire_hook[minecraft:custom_name='{"bold":true,"color":"light_purple","italic":false,"text":"Pink Key"}',minecraft:custom_data={key_item:1b,key:"pink"}]

execute if score @s objective matches ..0 run function game:adventure/new_objective



return 1