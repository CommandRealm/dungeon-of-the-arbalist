# called whenever there is a player using the collector stuff
scoreboard players remove @s trial_collector 1

execute if score @s trial_collector matches 20 run function game:trials/collector/get_crossbow
execute if score @s trial_collector matches 15 run function game:trials/collector/get_crossbow
execute if score @s trial_collector matches 10 run function game:trials/collector/get_crossbow
execute if score @s trial_collector matches 7 run function game:trials/collector/get_crossbow
execute if score @s trial_collector matches 3 run function game:trials/collector/get_crossbow
execute if score @s trial_collector matches 0 run function game:trials/collector/get_crossbow