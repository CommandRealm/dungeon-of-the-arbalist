# called to enable random trials recursively

scoreboard players set $mod random 9
function random:random

execute if score $rand random matches 0 run tag @s add trial_default
execute if score $rand random matches 1 run tag @s add trial_shopless
execute if score $rand random matches 2 run tag @s add trial_poverty
execute if score $rand random matches 3 run tag @s add trial_four_in_the_quiver
execute if score $rand random matches 4 run tag @s add trial_collector
execute if score $rand random matches 5 run tag @s add trial_detonation
execute if score $rand random matches 6 run tag @s add trial_gloom
execute if score $rand random matches 7 run tag @s add trial_firetrail

scoreboard players set $mod random 2
function random:random
execute if score $rand random matches 0 run function game:trials/random/random_trial