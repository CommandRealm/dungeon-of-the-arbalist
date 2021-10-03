##Called to give us a random stage 1 crossbow for the shop

execute store result score $rand random run loot insert 0 1 0 loot random:utilities
function random:reset_chest

execute if score $rand random matches 0 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/knockback_stick
execute if score $rand random matches 0 run function game:default/shop_generation/price/super_cheap

execute if score $rand random matches 1 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/shield
execute if score $rand random matches 1 run function game:default/shop_generation/price/super_cheap

execute if score $rand random matches 2 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/treasure_magnet
execute if score $rand random matches 2 run function game:default/shop_generation/price/cheap

execute if score $rand random matches 3 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/throwable_whirlpool
execute if score $rand random matches 3 run function game:default/shop_generation/price/super_cheap

execute if score $rand random matches 4 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/throwable_ice
execute if score $rand random matches 4 run function game:default/shop_generation/price/super_cheap

execute if score $rand random matches 5 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/key
execute if score $rand random matches 5 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 6 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/rabbits_foot
execute if score $rand random matches 6 run function game:default/shop_generation/price/medium_low

execute if score $rand random matches 7 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/splash_regen_potion
execute if score $rand random matches 7 run function game:default/shop_generation/price/medium_low

execute if score $rand random matches 8 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/glowing_wave
execute if score $rand random matches 8 run function game:default/shop_generation/price/cheap

execute if score $rand random matches 9 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/treasure_zombie
execute if score $rand random matches 9 run function game:default/shop_generation/price/medium_low

execute if score $rand random matches 10 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/boss_scroll
execute if score $rand random matches 10 run function game:default/shop_generation/price/cheap

execute if score $rand random matches 11 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/treasure_chest
execute if score $rand random matches 11 run function game:default/shop_generation/price/cheap

execute if score $rand random matches 12 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/utility_chest
execute if score $rand random matches 12 run function game:default/shop_generation/price/medium

execute if score $rand random matches 13 run loot spawn ~ ~-0.25 ~ loot game:shop_items/utilities/healing_chest
execute if score $rand random matches 13 run function game:default/shop_generation/price/cheap
