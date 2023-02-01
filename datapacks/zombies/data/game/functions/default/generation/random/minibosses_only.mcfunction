##called to give us minibosses only (debug mode)

##Random number
scoreboard players add $miniboss generation 1
execute if score $miniboss generation matches 12.. run scoreboard players set $miniboss generation 0

##Clearing storage
data remove storage minecraft:generation name


##Setting string
execute if score $miniboss generation matches 0 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_husk"
execute if score $miniboss generation matches 1 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_polar_bear"
execute if score $miniboss generation matches 2 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_blaze"
execute if score $miniboss generation matches 3 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_ender"
execute if score $miniboss generation matches 4 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_knight"
execute if score $miniboss generation matches 5 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_mooshroom"
execute if score $miniboss generation matches 6 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_illusioner"
execute if score $miniboss generation matches 7 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_bees"
execute if score $miniboss generation matches 8 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_spider"
execute if score $miniboss generation matches 9 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_slime"
execute if score $miniboss generation matches 10 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_piglins"
execute if score $miniboss generation matches 11 run data modify storage minecraft:generation name set value "minecraft:cube_miniboss_hoodies"