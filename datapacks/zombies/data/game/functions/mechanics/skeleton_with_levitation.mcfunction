##Called when a skeleton has levitation (with a 1t delay)

item replace entity @e[type=skeleton,nbt={ActiveEffects:[{Id:25}],HandItems:[{id:"minecraft:bow"}]},tag=base_skeleton] weapon.mainhand with stick
execute as @e[type=skeleton,nbt={HandItems:[{id:"minecraft:stick"}]},tag=base_skeleton] at @s unless data entity @s ActiveEffects[{Id:25}] run item replace entity @s weapon.mainhand with bow

##Scheduling
execute if entity @e[type=skeleton,nbt={ActiveEffects:[{Id:25}]},tag=base_skeleton] run schedule clear game:mechanics/skeleton_with_levitation
schedule function game:mechanics/skeleton_with_levitation 2t
