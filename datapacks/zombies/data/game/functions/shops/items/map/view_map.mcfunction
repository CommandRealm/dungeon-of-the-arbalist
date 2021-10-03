##called to give us the view of our map.

execute if entity @s[tag=!color_blind_mode] as @e[type=area_effect_cloud,tag=mapping_marker] at @s run data modify entity @s CustomName set value '[{"text":"█","color":"#4b4b4b"}]'

execute if entity @s[tag=color_blind_mode] as @e[type=area_effect_cloud,tag=mapping_marker] at @s run data modify entity @s CustomName set value '[{"text":"(X)","color":"#4b4b4b"}]'

##two new lines
tellraw @s {"text":"\n"}

##showing key
execute if entity @s[tag=!color_blind_mode] run function game:shops/items/map/show_key
execute if entity @s[tag=color_blind_mode] run function game:shops/items/map/color_blind/show_key

##grid sizes
execute if score $grid_size settings matches 0 if entity @s[tag=!color_blind_mode] run function game:shops/items/map/five
execute if score $grid_size settings matches 1 if entity @s[tag=!color_blind_mode] run function game:shops/items/map/seven
execute if score $grid_size settings matches 2 if entity @s[tag=!color_blind_mode] run function game:shops/items/map/nine

execute if score $grid_size settings matches 0 if entity @s[tag=color_blind_mode] run function game:shops/items/map/color_blind/five
execute if score $grid_size settings matches 1 if entity @s[tag=color_blind_mode] run function game:shops/items/map/color_blind/seven
execute if score $grid_size settings matches 2 if entity @s[tag=color_blind_mode] run function game:shops/items/map/color_blind/nine