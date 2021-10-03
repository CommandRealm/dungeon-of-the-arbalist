##called to give or subtract a random amount of treasure.

execute store result score $rand random run loot insert 0 1 0 loot random:utility_chest_result
function random:reset_chest

execute if score $rand random matches 0 run tellraw @s [{"text":"Opening the chest caused you to gain ","color":"#a26ec3"},{"score":{"objective":"random","name":"$rand"},"color":"yellow"},{"text":" utilites.","color":"#a26ec3"}]
execute if score $rand random matches 1.. run tellraw @s [{"text":"Opening the chest caused you to gain ","color":"#a26ec3"},{"score":{"objective":"random","name":"$rand"},"color":"green"},{"text":" utilites.","color":"#a26ec3"}]
execute if score $rand random matches 1.. run function game:shops/items/utility_chest/random_utility


##sound
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 1 1