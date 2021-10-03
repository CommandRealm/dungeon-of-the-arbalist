##Called to reset adventure maps.

execute if score $mode settings matches 1 run function game:adventure/castle/reset_map
execute if score $mode settings matches 2 run function game:adventure/kingdom/reset_map

execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:red_shulker_box"}},x=0,y=66,z=0,distance=500..]
execute if score $difficulty settings matches 5.. run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]
execute if score $starting_players game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}},x=0,y=66,z=0,distance=500..]