##Called when you pickup the blue key.

kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}},tag=!blue_key]
clear @s tripwire_hook
give @s[tag=!filled_hotbar] tripwire_hook{key_item:1b,display:{Name:'[{"text":"Blue Key","color":"blue","italic":false,"bold":true}]'},key:"blue"}

execute if score @s objective matches ..2 run function game:adventure/new_objective





