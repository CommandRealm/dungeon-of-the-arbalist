##Called to see if this entity should be a shop

execute store result score $rand random run loot insert 0 1 0 loot random:shop_chance
function random:reset_chest

execute unless score $rand random matches 0..8 run function game:default/shop_generation/remove_shop_points
execute if score $rand random matches 0..8 run function game:default/shop_generation/create_shop
