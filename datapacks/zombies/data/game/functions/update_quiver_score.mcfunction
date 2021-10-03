##called to update our quiver score
execute as @a[tag=playing] store result score @s quiver run data get entity @s Inventory[0].tag.quiver 1
clear @a[tag=playing] arrow