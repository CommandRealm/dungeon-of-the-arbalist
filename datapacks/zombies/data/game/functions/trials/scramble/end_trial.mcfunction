# called to give us a random trial

execute if score @s save_scramble matches 0 run tag @s remove trial_default
execute if score @s save_scramble matches 1 run tag @s remove trial_shopless
execute if score @s save_scramble matches 2 run tag @s remove trial_poverty
execute if score @s save_scramble matches 3 run tag @s remove trial_four_in_the_quiver
execute if score @s save_scramble matches 3 run scoreboard players set @s[scores={arrow_delay=100..}] arrow_delay 20
execute if score @s save_scramble matches 4 run tag @s remove trial_collector
execute if score @s save_scramble matches 5 run tag @s remove trial_detonation
execute if score @s save_scramble matches 6 run tag @s remove trial_gloom
execute if score @s save_scramble matches 6 run effect clear @s darkness
execute if score @s save_scramble matches 7 run tag @s remove trial_firetrail

# tellraw @s [{"text":"- ","color":"gray"},{"text":"Trial ","bold":true,"color":"#214f53"},{"text":"disabled","color":"red"},{"text":".","color":"gray"}]
playsound minecraft:entity.skeleton_horse.death master @s ~ ~ ~ 1 0
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 0.34 0.7