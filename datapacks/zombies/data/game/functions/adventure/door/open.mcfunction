##called when an adventure door should open.

##Which map are we on?
execute if score $mode settings matches 1 run function game:adventure/castle/door/open
execute if score $mode settings matches 2 run function game:adventure/kingdom/door/open

effect give @e[tag=shopkeeper] resistance 100000 126 true