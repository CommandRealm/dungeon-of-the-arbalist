##called when an adventure door should open.

##Which map are we on?
execute if score $mode settings matches 1 run function game:adventure/castle/door/open
execute if score $mode settings matches 2 run function game:adventure/kingdom/door/open

effect give @e[tag=shopkeeper] resistance infinite 126 true

# Scramble trial
execute as @a[tag=playing,team=!enemy,tag=trial_scramble] at @s run function game:trials/scramble/end_trial
execute as @a[tag=playing,team=!enemy,tag=trial_scramble] at @s run function game:trials/scramble/new_trial
