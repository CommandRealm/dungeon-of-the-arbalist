##called to get crossbow effects.


##crossbow effects
execute if data entity @s Inventory[0].components."minecraft:lore"[0] unless data entity @s Inventory[0].components."minecraft:lore"[1] run function help:49f4477fb10cde1fbb0cf82cdaa07bf43c7045f3ff8f7c4fe9ea61a1be9c311f
execute if data entity @s Inventory[0].components."minecraft:lore"[1] unless data entity @s Inventory[0].components."minecraft:lore"[2] run function help:7093e794c0d3d8acf4f130b73f3682dec8c2d6b987adeec153b543c604f9e826
execute if data entity @s Inventory[0].components."minecraft:lore"[2] unless data entity @s Inventory[0].components."minecraft:lore"[3] run function help:cb2d4293b8b7e803f005d43ccf8b6a8fa707617931fa9b20e8a183b35d37c540
execute if data entity @s Inventory[0].components."minecraft:lore"[3] run function help:33065c02b255e6a41f38b853e66b54f07606359847a82b9af3cdb490f324ce39

execute if score $difficulty settings matches 5.. run tellraw @s[scores={crossbow_id=34}] [{"text":"Doesn't heal on this difficulty.","color":"red","type":"text"}]

##sound
execute if data entity @s Inventory[0].components."minecraft:lore"[0] run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 1.25

##tag
tag @s remove needs_effect_description
return 1