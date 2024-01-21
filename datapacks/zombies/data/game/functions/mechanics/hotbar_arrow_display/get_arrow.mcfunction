##Called to give us an arrow

kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}},tag=!die_between_games]
clear @s arrow
clear @s spectral_arrow{spectral_arrow:1b}

# Arrows
item replace block 0 1 0 container.0 with arrow
execute store result block 0 1 0 Items[0].Count byte 1 run scoreboard players get @s quiver 
item replace entity @s hotbar.7 from block 0 1 0 container.0

# if we have more than 64
execute if score @s quiver matches 126.. run function game:mechanics/hotbar_arrow_display/get_spectral_arrow
