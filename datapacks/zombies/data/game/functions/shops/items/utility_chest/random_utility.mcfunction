##called to give us a random utility.

execute store result score $rand_2 random run loot insert 0 1 0 loot random:utilities
function random:reset_chest


##13 is here so we don't have to re-roll if we're on the wrong difficulty
execute if score $rand_2 random matches 13 unless score $difficulty settings matches 5.. run loot give @s loot game:shop_items/utilities/healing_chest

##Choosing a different item if you get a splash regen potion on hardcore or nightmare
execute if score $rand_2 random matches 13 if score $difficulty settings matches 5.. run scoreboard players set $rand_2 random 0


execute if score $rand_2 random matches 0 run loot give @s loot game:shop_items/utilities/knockback_stick


execute if score $rand_2 random matches 1 run loot give @s loot game:shop_items/utilities/shield

execute if score $rand_2 random matches 2 run loot give @s loot game:shop_items/utilities/treasure_magnet

execute if score $rand_2 random matches 3 run loot give @s loot game:shop_items/utilities/throwable_whirlpool

execute if score $rand_2 random matches 4 run loot give @s loot game:shop_items/utilities/throwable_ice

execute if score $rand_2 random matches 5 run loot give @s loot game:shop_items/utilities/key

execute if score $rand_2 random matches 6 run loot give @s loot game:shop_items/utilities/rabbits_foot

execute if score $rand_2 random matches 7 unless score $difficulty settings matches 5.. run loot give @s loot game:shop_items/utilities/splash_regen_potion

##Choosing a different item if you get a splash regen potion on hardcore or nightmare
execute if score $rand_2 random matches 7 if score $difficulty settings matches 5.. run scoreboard players add $rand_2 random 1

execute if score $rand_2 random matches 8 run loot give @s loot game:shop_items/utilities/glowing_wave

execute if score $rand_2 random matches 9 run loot give @s loot game:shop_items/utilities/treasure_zombie

execute if score $rand_2 random matches 10 run loot give @s loot game:shop_items/utilities/boss_scroll

execute if score $rand_2 random matches 11 run loot give @s loot game:shop_items/utilities/treasure_chest

execute if score $rand_2 random matches 12 run loot give @s loot game:shop_items/utilities/utility_chest

execute if score $rand_2 random matches 14 run loot give @s loot game:shop_items/utilities/rope

execute if score $rand_2 random matches 15 run loot give @s loot game:shop_items/utilities/gas_mask

execute if score $rand_2 random matches 16 run loot give @s loot game:shop_items/utilities/strength_shield




##Removing tags if our inventory is full.
execute as @e[type=item,distance=..2,nbt={Age:0s,Item:{tag:{shop_item:1b}}}] at @s run data merge entity @s {shop_item:0b,needs_initialization:0b,offset_id:3}

##if we should do this again.
scoreboard players remove $rand random 1
execute if score $rand random matches 1.. run function game:shops/items/utility_chest/random_utility