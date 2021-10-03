##called to get crossbow effects.


##crossbow effects
execute if data entity @s Inventory[0].tag.display.Lore[0] unless data entity @s Inventory[0].tag.display.Lore[1] run tellraw @s [{"text":"=- ","color":"green"},{"text":"Effects","color":"gold","bold":true},{"text":" -=","color":"green"},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[0]","entity":"@s","interpret":true}]
execute if data entity @s Inventory[0].tag.display.Lore[1] unless data entity @s Inventory[0].tag.display.Lore[2] run tellraw @s [{"text":"=- ","color":"green"},{"text":"Effects","color":"gold","bold":true},{"text":" -=","color":"green"},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[0]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[1]","entity":"@s","interpret":true}]
execute if data entity @s Inventory[0].tag.display.Lore[2] unless data entity @s Inventory[0].tag.display.Lore[3] run tellraw @s [{"text":"=- ","color":"green"},{"text":"Effects","color":"gold","bold":true},{"text":" -=","color":"green"},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[0]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[1]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[2]","entity":"@s","interpret":true}]
execute if data entity @s Inventory[0].tag.display.Lore[3] run tellraw @s [{"text":"=- ","color":"green"},{"text":"Effects","color":"gold","bold":true},{"text":" -=","color":"green"},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[0]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[1]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[2]","entity":"@s","interpret":true},{"text":"\n"},{"nbt":"Inventory[0].tag.display.Lore[3]","entity":"@s","interpret":true}]

execute if score $difficulty settings matches 5.. run tellraw @s[scores={crossbow_id=34}] [{"text":"Doesn't heal on this difficulty.","color":"red"}]

##sound
execute if data entity @s Inventory[0].tag.display.Lore[0] run playsound minecraft:block.wooden_door.close master @a ~ ~ ~ 1 1.25

##tag
tag @s remove needs_effect_description