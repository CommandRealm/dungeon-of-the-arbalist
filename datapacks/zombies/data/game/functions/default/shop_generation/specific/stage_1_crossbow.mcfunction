##Called to give us a random stage 1 crossbow for the shop

execute store result score $rand random run loot insert 0 1 0 loot random:stage_one_crossbow
function random:reset_chest
# function game:mechanics/calculate_crossbow_dps
execute if score $rand random matches 1 run loot insert 0 1 0 loot game:crossbow/fire
execute if score $rand random matches 1 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 1 run loot spawn ~ ~-0.25 ~ loot game:crossbow/fire
execute if score $rand random matches 1 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:1,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 2 run loot insert 0 1 0 loot game:crossbow/water
execute if score $rand random matches 2 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 2 run loot spawn ~ ~-0.25 ~ loot game:crossbow/water
execute if score $rand random matches 2 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:2,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 3 run loot insert 0 1 0 loot game:crossbow/earth
execute if score $rand random matches 3 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 3 run loot spawn ~ ~-0.25 ~ loot game:crossbow/earth
execute if score $rand random matches 3 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:3,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 4 run loot insert 0 1 0 loot game:crossbow/air
execute if score $rand random matches 4 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 4 run loot spawn ~ ~-0.25 ~ loot game:crossbow/air
execute if score $rand random matches 4 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:4,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 5 run loot insert 0 1 0 loot game:crossbow/ice
execute if score $rand random matches 5 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 5 run loot spawn ~ ~-0.25 ~ loot game:crossbow/ice
execute if score $rand random matches 5 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:5,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}

execute if score $rand random matches 6 run loot insert 0 1 0 loot game:crossbow/lightning
execute if score $rand random matches 6 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 6 run loot spawn ~ ~-0.25 ~ loot game:crossbow/lightning
execute if score $rand random matches 6 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:6,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 7 run loot insert 0 1 0 loot game:crossbow/nature
execute if score $rand random matches 7 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 7 run loot spawn ~ ~-0.25 ~ loot game:crossbow/nature
execute if score $rand random matches 7 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:7,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 8 run loot insert 0 1 0 loot game:crossbow/darkness
execute if score $rand random matches 8 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 8 run loot spawn ~ ~-0.25 ~ loot game:crossbow/darkness
execute if score $rand random matches 8 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:8,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}


execute if score $rand random matches 9 run loot insert 0 1 0 loot game:crossbow/metal
execute if score $rand random matches 9 run function game:mechanics/calculate_crossbow_dps_for_shops
execute if score $rand random matches 9 run loot spawn ~ ~-0.25 ~ loot game:crossbow/metal
execute if score $rand random matches 9 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:9,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}

function game:default/shop_generation/price/medium_low



