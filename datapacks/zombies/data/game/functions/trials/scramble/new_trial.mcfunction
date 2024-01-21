# called to give us a random trial

# rng (calculate is making sure we dont re-randomize more than 50 times)
scoreboard players set $calculate calculate 0
function game:trials/scramble/rng_selection

scoreboard players operation @s save_scramble = $rand random

execute if score @s save_scramble matches 0 run tag @s add trial_default
execute if score @s save_scramble matches 1 run tag @s add trial_shopless
execute if score @s save_scramble matches 2 run tag @s add trial_poverty
execute if score @s save_scramble matches 3 run tag @s add trial_four_in_the_quiver
execute if score @s save_scramble matches 3 run scoreboard players set @s[scores={quiver=5..}] quiver 4
execute if score @s save_scramble matches 4 run tag @s add trial_collector
execute if score @s save_scramble matches 5 run tag @s add trial_detonation
execute if score @s save_scramble matches 6 run tag @s add trial_gloom
execute if score @s save_scramble matches 6 run effect give @s darkness infinite 255 true
execute if score @s save_scramble matches 7 run tag @s add trial_firetrail
tellraw @s [{"text":"- ","color":"gray"},{"text":"Trial ","bold":true,"color":"#214f53"},{"text":"enabled","color":"green"},{"text":".","color":"gray"}]
tag @s add skip_scramble
function game:trials/tellraw

tag @s remove skip_scramble
