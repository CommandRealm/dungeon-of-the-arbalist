##Called when a skeleton has levitation (with a 1t delay)

item replace entity @e[type=minecraft:skeleton,tag=base_skeleton,nbt={HandItems:[{id:"minecraft:bow"}],active_effects:[{id:"minecraft:levitation"}]}] weapon.mainhand with minecraft:stick
execute as @e[type=minecraft:skeleton,tag=base_skeleton,nbt={HandItems:[{id:"minecraft:stick"}]}] at @s unless data entity @s active_effects[{id:"minecraft:levitation"}] run item replace entity @s weapon.mainhand with minecraft:bow

##Scheduling
execute if entity @e[type=minecraft:skeleton,tag=base_skeleton,nbt={active_effects:[{id:"minecraft:levitation"}]}] run schedule clear game:mechanics/skeleton_with_levitation
schedule function game:mechanics/skeleton_with_levitation 2t

return 1