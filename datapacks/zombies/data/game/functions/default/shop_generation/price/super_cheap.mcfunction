##Called to create a price.

##Base random number
execute store result score $calculate calculate run loot insert 0 1 0 loot random:super_cheap_item_price
function random:reset_chest

##Should we have a sale, stay the same, or be extra expensive?

execute store result score $rand_3 random run loot insert 0 1 0 loot random:check_sale
function random:reset_chest


##If we aren't staying the same, figure out that value
execute unless score $rand_3 random matches 0..2 store result score $calculate_2 calculate run loot insert 0 1 0 loot random:super_cheap_price_variation
function random:reset_chest

##Getting our price
execute if score $rand_3 random matches 3 run scoreboard players operation $calculate calculate += $calculate_2 calculate_2
execute if score $rand_3 random matches 4 run scoreboard players operation $calculate calculate -= $calculate_2 calculate_2

##Applying the price to our item
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] unless score @s item_price matches 0.. run scoreboard players operation @s item_price = $calculate calculate