##called to update our quiver score
execute as @a[tag=playing] store result score @s quiver run data get entity @s Inventory[0].components."minecraft:custom_data".quiver 1
clear @a[tag=playing] minecraft:arrow
return 1