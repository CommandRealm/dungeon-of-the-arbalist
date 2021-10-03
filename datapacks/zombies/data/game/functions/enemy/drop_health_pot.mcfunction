##called to summon a health pot.

loot spawn ~ ~ ~ loot game:shop_items/health_potion

##Sound/particles
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.75
particle item glass ~ ~ ~ 0 0 0 0.2 50

##Removing needs initialization.
execute as @e[type=item,nbt={Item:{id:"minecraft:potion"}}] at @s run data merge entity @s {Item:{tag:{needs_initialization:0b,shop_item:0b}}}

##Resetting score
scoreboard players set $health_pot game 0