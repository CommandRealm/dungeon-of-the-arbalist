##called to give or subtract a random amount of treasure.

execute store result score $rand random run loot insert 0 1 0 loot random:treasure_chest_loot
function random:reset_chest

execute if score $rand random matches ..199 run function game:shops/items/treasure_chest/nothing
execute if score $rand random matches 200.. run function game:shops/items/treasure_chest/add

##sound
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 1