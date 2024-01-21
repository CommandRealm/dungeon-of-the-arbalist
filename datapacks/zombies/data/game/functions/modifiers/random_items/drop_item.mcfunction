scoreboard players set $mod rand 16
function random:random


##13 is here so we don't have to re-roll if we're on the wrong difficulty
execute if score $rand random matches 13 unless score $difficulty settings matches 5.. run loot spawn ~ ~ ~ loot game:shop_items/utilities/healing_chest

##Choosing a different item if you get a heal chest on hardcore or nightmare
execute if score $rand random matches 13 if score $difficulty settings matches 5.. run scoreboard players set $rand random 0


execute if score $rand random matches 0 run loot spawn ~ ~ ~ loot game:shop_items/utilities/knockback_stick


execute if score $rand random matches 1 run loot spawn ~ ~ ~ loot game:shop_items/utilities/shield

execute if score $rand random matches 2 run loot spawn ~ ~ ~ loot game:shop_items/utilities/treasure_magnet

execute if score $rand random matches 3 run loot spawn ~ ~ ~ loot game:shop_items/utilities/throwable_whirlpool

execute if score $rand random matches 4 run loot spawn ~ ~ ~ loot game:shop_items/utilities/throwable_ice

execute if score $rand random matches 5 run loot spawn ~ ~ ~ loot game:shop_items/utilities/key

execute if score $rand random matches 6 run loot spawn ~ ~ ~ loot game:shop_items/utilities/rabbits_foot

execute if score $rand random matches 7 unless score $difficulty settings matches 5.. run loot spawn ~ ~ ~ loot game:shop_items/utilities/splash_regen_potion

##Choosing a different item if you get a splash regen potion on hardcore or nightmare
execute if score $rand random matches 7 if score $difficulty settings matches 5.. run scoreboard players add $rand random 1

execute if score $rand random matches 8 run loot spawn ~ ~ ~ loot game:shop_items/utilities/glowing_wave

execute if score $rand random matches 9 run loot spawn ~ ~ ~ loot game:shop_items/utilities/treasure_zombie

execute if score $rand random matches 10 run loot spawn ~ ~ ~ loot game:shop_items/utilities/boss_scroll

execute if score $rand random matches 11 run loot spawn ~ ~ ~ loot game:shop_items/utilities/treasure_chest

execute if score $rand random matches 12 run loot spawn ~ ~ ~ loot game:shop_items/utilities/utility_chest

execute if score $rand random matches 14 run loot spawn ~ ~ ~ loot game:shop_items/utilities/rope

execute if score $rand random matches 15 run loot spawn ~ ~ ~ loot game:shop_items/utilities/gas_mask

execute if score $rand random matches 16 run loot spawn ~ ~ ~ loot game:shop_items/utilities/strength_shield


particle smoke ~ ~ ~ 0 0 0 0.25 50
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0