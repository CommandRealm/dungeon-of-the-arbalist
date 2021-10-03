##Called when a falling block lands (on ground or near enemy.)


##Specific tags
execute if entity @s[tag=avalanche_falling_block] run function game:mechanics/falling_block/avalanche
execute if entity @s[tag=thunderstorm_falling_block] run function game:mechanics/falling_block/thunderstorm
execute if entity @s[tag=landslide_falling_block] run function game:mechanics/falling_block/landslide

##Removing armor stand
tp @s 0 0 0
kill @s