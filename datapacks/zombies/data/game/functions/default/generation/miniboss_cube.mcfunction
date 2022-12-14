##called to give us a random cube

##Random number
execute store result score $rand random run loot insert 0 1 0 loot random:miniboss_cubes
function random:reset_chest

##Clearing storage
data remove storage minecraft:generation name

##If there is already one of this miniboss out there, change this one.
execute if score $miniboss_1 game = $rand random run scoreboard players add $rand random 1
execute if score $rand random matches 11.. run scoreboard players set $rand random 0

##Setting string
execute if score $rand random matches 0 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_husk"
execute if score $rand random matches 1 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_polar_bear"
execute if score $rand random matches 2 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_blaze"
execute if score $rand random matches 3 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_ender"
execute if score $rand random matches 4 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_knight"
execute if score $rand random matches 5 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_mooshroom"
execute if score $rand random matches 6 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_illusioner"
execute if score $rand random matches 7 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_bees"
execute if score $rand random matches 8 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_spider"
execute if score $rand random matches 9 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_slime"
execute if score $rand random matches 10 run data modify block ~ ~-16 ~ name set value "minecraft:cube_miniboss_piglins"



##Storing miniboss scores
execute if score $miniboss_1 game matches -1 run tag @r add miniboss_1
execute if entity @a[tag=miniboss_1] run scoreboard players operation $miniboss_1 game = $rand random
execute unless entity @a[tag=miniboss_1] run scoreboard players operation $miniboss_2 game = $rand random

##Removing tag
tag @a remove miniboss_1