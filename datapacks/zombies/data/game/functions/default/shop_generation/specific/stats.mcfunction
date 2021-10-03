##Called to give us a random stage 1 crossbow for the shop

execute store result score $rand random run loot insert 0 1 0 loot random:stats
function random:reset_chest

execute if score $rand random matches 0 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/health

execute if score $rand random matches 1 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/quiver

execute if score $rand random matches 2 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/looting

execute if score $rand random matches 3 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/damage

execute if score $rand random matches 4 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/speed

execute if score $rand random matches 5 run loot spawn ~ ~-0.25 ~ loot game:shop_items/stats/revive

function game:default/shop_generation/price/medium_low