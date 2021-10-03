##Called to give us a random stage 1 crossbow for the shop

execute store result score $rand random run loot insert 0 1 0 loot random:stage_two_crossbow
function random:reset_chest


execute if score $rand random matches 10 run loot spawn ~ ~-0.25 ~ loot game:crossbow/magma
execute if score $rand random matches 10 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:10,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 10 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 11 run loot spawn ~ ~-0.25 ~ loot game:crossbow/rain
execute if score $rand random matches 11 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:11,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 11 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 12 run loot spawn ~ ~-0.25 ~ loot game:crossbow/boulder
execute if score $rand random matches 12 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:12,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 12 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 13 run loot spawn ~ ~-0.25 ~ loot game:crossbow/tornado
execute if score $rand random matches 13 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:13,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 13 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 14 run loot spawn ~ ~-0.25 ~ loot game:crossbow/frost
execute if score $rand random matches 14 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:14,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 14 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 15 run loot spawn ~ ~-0.25 ~ loot game:crossbow/electric
execute if score $rand random matches 15 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:15,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 15 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 16 run loot spawn ~ ~-0.25 ~ loot game:crossbow/wild
execute if score $rand random matches 16 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:16,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 16 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 17 run loot spawn ~ ~-0.25 ~ loot game:crossbow/shadow
execute if score $rand random matches 17 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:17,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 17 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 18 run loot spawn ~ ~-0.25 ~ loot game:crossbow/iron
execute if score $rand random matches 18 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:18,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 18 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 19 run loot spawn ~ ~-0.25 ~ loot game:crossbow/steam
execute if score $rand random matches 19 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:19,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 19 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 20 run loot spawn ~ ~-0.25 ~ loot game:crossbow/waterfall
execute if score $rand random matches 20 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:20,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 20 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 21 run loot spawn ~ ~-0.25 ~ loot game:crossbow/basalt
execute if score $rand random matches 21 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:21,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 21 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 22 run loot spawn ~ ~-0.25 ~ loot game:crossbow/conduction
execute if score $rand random matches 22 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:22,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 22 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 23 run loot spawn ~ ~-0.25 ~ loot game:crossbow/snow
execute if score $rand random matches 23 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:23,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 23 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 24 run loot spawn ~ ~-0.25 ~ loot game:crossbow/combustion
execute if score $rand random matches 24 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:24,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 24 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 25 run loot spawn ~ ~-0.25 ~ loot game:crossbow/uranium
execute if score $rand random matches 25 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:25,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 25 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 26 run loot spawn ~ ~-0.25 ~ loot game:crossbow/cumulonimbus
execute if score $rand random matches 26 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:26,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 26 run function game:default/shop_generation/price/super_high

execute if score $rand random matches 27 run loot spawn ~ ~-0.25 ~ loot game:crossbow/erratics
execute if score $rand random matches 27 run data merge entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},sort=nearest,limit=1] {Item:{tag:{crossbow_id:27,needs_initialization:1b,Motion:[0.0d,0.0d,0.0d]}}}
execute if score $rand random matches 27 run function game:default/shop_generation/price/super_high

