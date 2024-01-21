##called to update our quiver score
execute as @a[tag=playing] store result score @s quiver run data get entity @s Inventory[0].tag.quiver 1
clear @a[tag=playing] arrow
scoreboard players set @a[tag=playing,tag=trial_four_in_the_quiver] quiver 4
scoreboard players set @a[tag=playing,tag=trial_four_in_the_quiver] arrow_delay 1
clear @a[tag=playing,tag=trial_four_in_the_quiver] arrow