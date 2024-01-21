# called for finding our trial

# adding our attempts
scoreboard players add $calculate calculate 1

scoreboard players set $mod random 8
function random:random

# if we have the trial active already, pick a different one


execute if score $rand random matches 0 if entity @s[tag=trial_default] run scoreboard players set $rand random -1
execute if score $rand random matches 1 if entity @s[tag=trial_shopless] run scoreboard players set $rand random -1
execute if score $rand random matches 2 if entity @s[tag=trial_poverty] run scoreboard players set $rand random -1
execute if score $rand random matches 3 if entity @s[tag=trial_four_in_the_quiver] run scoreboard players set $rand random -1
execute if score $rand random matches 4 if entity @s[tag=trial_collector] run scoreboard players set $rand random -1
execute if score $rand random matches 5 if entity @s[tag=trial_detonation] run scoreboard players set $rand random -1
execute if score $rand random matches 6 if entity @s[tag=trial_gloom] run scoreboard players set $rand random -1
execute if score $rand random matches 7 if entity @s[tag=trial_firetrail] run scoreboard players set $rand random -1

execute if score $rand random matches -1 unless score $calculate calculate matches 50.. run function game:trials/scramble/rng_selection
execute if score $rand random matches -1 if score $calculate calculate matches 50.. run function game:trials/scramble/rng_selection