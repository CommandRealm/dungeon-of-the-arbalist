# called for enhance effects

effect give @s speed infinite 1 true
effect give @s strength infinite 0 true

# adding tag
tag @s add enhanced

# specific effects

# fire skele
item replace entity @s[tag=fire_skeleton] weapon.mainhand with bow{Enchantments:[{id:"minecraft:flame",lvl:2},{id:"minecraft:power",lvl:1}]}

# rogue
item replace entity @s[tag=rogue] weapon.mainhand with crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:4}]}

# keeper
execute if entity @s[tag=keeper,tag=enhanced] run function game:enemy/volition/keeper/hit
execute if entity @s[tag=keeper,tag=enhanced] run function game:enemy/volition/keeper/hit


# phantom
execute if entity @s[type=phantom,tag=phantom] run tag @e[type=zombie,tag=phantom,sort=nearest,limit=1] add enhanced
execute if entity @s[type=zombie,tag=phantom] run tag @e[type=phantom,tag=phantom,sort=nearest,limit=1] add enhanced