##Called to reset adventure maps.

execute if score $mode settings matches 1 run function game:adventure/castle/reset_map
execute if score $mode settings matches 2 run function game:adventure/kingdom/reset_map

execute if score $difficulty settings matches 5.. run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:potion"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:splash_potion"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:red_dye"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:red_shulker_box"}}]
execute if score $difficulty settings matches 5.. run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:lime_dye"}}]
execute if score $starting_players game matches 1 run kill @e[type=minecraft:item,x=0,y=66,z=0,distance=500..,nbt={Item:{id:"minecraft:lime_dye"}}]
return 1