##Specific elemental code

##Particles
execute if entity @s[scores={calculate=0}] run particle minecraft:lava ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @s[scores={calculate=1}] run particle minecraft:rain ~ ~0.75 ~ 0.25 0.5 0.25 0.25 25
execute if entity @s[scores={calculate=2}] run particle minecraft:block{block_state:{Name:"minecraft:granite"}} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 8
execute if entity @s[scores={calculate=2}] run particle minecraft:block{block_state:{Name:"minecraft:polished_granite"}} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 7
execute if entity @s[scores={calculate=2}] run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 5
execute if entity @s[scores={calculate=3}] run particle minecraft:cloud ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @s[scores={calculate=4}] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 15
execute if entity @s[scores={calculate=5}] run particle minecraft:item{item:"minecraft:yellow_stained_glass"} ~ ~0.75 ~ 0.25 0.5 0.25 0.2 15
execute if entity @s[scores={calculate=5}] run particle minecraft:item{item:"minecraft:yellow_wool"} ~ ~0.75 ~ 0.25 0.5 0.25 0.15 15
execute if entity @s[scores={calculate=6}] run particle minecraft:item{item:"minecraft:green_concrete_powder"} ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @s[scores={calculate=6}] run particle minecraft:item{item:"minecraft:short_grass"} ~ ~0.75 ~ 0.25 0.5 0.25 0.25 10
execute if entity @s[scores={calculate=6}] run particle minecraft:item{item:"minecraft:lime_terracotta"} ~ ~0.75 ~ 0.25 0.5 0.25 0.2 5
execute if entity @s[scores={calculate=7}] run particle minecraft:squid_ink ~ ~0.75 ~ 0.25 0.5 0.25 0.1 5
execute if entity @s[scores={calculate=8}] run particle minecraft:item{item:"minecraft:iron_block"} ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
return 1