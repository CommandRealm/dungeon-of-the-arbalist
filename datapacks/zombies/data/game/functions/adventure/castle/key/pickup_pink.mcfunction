##Called when you pickup the pink key.

kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}},tag=!pink_key]
clear @s tripwire_hook
give @s[tag=!filled_hotbar] tripwire_hook{key_item:1b,display:{Name:'[{"text":"Pink Key","color":"light_purple","italic":false,"bold":true}]'},key:"pink"}

execute if score @s objective matches ..0 run function game:adventure/new_objective


