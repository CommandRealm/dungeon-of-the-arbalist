# called when we use a shield


#if it is a strength shield
execute if data entity @s SelectedItem{tag:{shield:"strength"}} run tag @s add use_strength_shield
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:shield",tag:{shield:"strength"}}] run tag @s add use_strength_shield

# enabling strength
execute if entity @s[tag=use_strength_shield] run function game:shops/items/shields/strength/use

# reset
scoreboard players reset @s use_shield

# tag removals
tag @s remove use_strength_shield