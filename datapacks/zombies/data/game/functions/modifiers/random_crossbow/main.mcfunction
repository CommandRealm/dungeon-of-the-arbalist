# called whenever there is a player using the mutation stuff
scoreboard players remove @s modifier_random 1

execute if score @s modifier_random matches 20 run function game:modifiers/random_crossbow/get_crossbow
execute if score @s modifier_random matches 15 run function game:modifiers/random_crossbow/get_crossbow
execute if score @s modifier_random matches 10 run function game:modifiers/random_crossbow/get_crossbow
execute if score @s modifier_random matches 7 run function game:modifiers/random_crossbow/get_crossbow
execute if score @s modifier_random matches 3 run function game:modifiers/random_crossbow/get_crossbow
execute if score @s modifier_random matches 0 run function game:modifiers/random_crossbow/get_crossbow