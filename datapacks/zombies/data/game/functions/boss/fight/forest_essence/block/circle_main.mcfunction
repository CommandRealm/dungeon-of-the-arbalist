##Main burst function


##Main block function
function game:boss/fight/forest_essence/block/main

##If there is no block
execute if score $attack boss matches ..2147483626 unless entity @e[type=armor_stand,tag=essence_block_marker] run function game:boss/fight/forest_essence/block/circle_over

