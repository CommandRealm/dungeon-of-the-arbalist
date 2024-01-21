##Called to create a random number


##getting random number
execute store result score $rand_2 random run loot insert 0 1 0 loot random:shop_item_chances
function random:reset_chest


##Figuring out what item we should spawn.
execute if score $rand_2 random matches 1..40 run function game:default/shop_generation/specific/stats
execute if score $rand_2 random matches 41..70 run loot spawn ~ ~-0.25 ~ loot game:shop_items/health_potion
execute if score $rand_2 random matches 41..70 run function game:default/shop_generation/price/cheap
execute if score $rand_2 random matches 71..84 run function game:default/shop_generation/specific/utilities
execute if score $rand_2 random matches 85..86 run loot spawn ~ ~-0.25 ~ loot game:shop_items/fishing_rod
execute if score $rand_2 random matches 85..86 run function game:default/shop_generation/price/cheap
execute if score $rand_2 random matches 87..88 run loot spawn ~ ~-0.25 ~ loot game:shop_items/throwable_tnt
execute if score $rand_2 random matches 87..88 run function game:default/shop_generation/price/super_cheap
execute if score $rand_2 random matches 89..90 run loot spawn ~ ~-0.25 ~ loot game:shop_items/map
execute if score $rand_2 random matches 89..90 run function game:default/shop_generation/price/high
execute if score $rand_2 random matches 91..95 run loot spawn ~ ~-0.25 ~ loot game:crossbow/default
execute if score $rand_2 random matches 91..95 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:0,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand_2 random matches 91..95 run function game:default/shop_generation/price/super_cheap
execute if score $rand_2 random matches 96..100 run function game:default/shop_generation/specific/stage_1_crossbow
##execute if score $rand_2 random matches 96..100 run function game:default/shop_generation/specific/stage_2_crossbow

##Removing healing items if this is hardcore or nightmare.
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:potion"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:splash_potion"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:red_dye"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:red_shulker_box"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:lime_dye"}}]
execute if score $starting_players game matches 1 run kill @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1,nbt={Item:{id:"minecraft:lime_dye"}}]

# adding price for items if wave is beyond 10
execute if score $wave game matches 10.. run function game:default/sho_generation/wave_price_addition

tp @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] @s
execute as @e[type=item,nbt={Item:{tag:{needs_initialization:1b}}},sort=nearest,limit=1] at @s run function game:shops/initialize_item




##Killing ourself
kill @s



