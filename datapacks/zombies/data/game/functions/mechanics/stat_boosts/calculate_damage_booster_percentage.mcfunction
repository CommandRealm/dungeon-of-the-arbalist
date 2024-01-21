# called to calculate our damage booster percentage


scoreboard players operation $calculate calculate = $damage calculate
scoreboard players operation $calculate calculate += @s b_damage

# quarter multiplication (should be 0.75)
scoreboard players operation $calculate_2 calculate = $calculate calculate
scoreboard players operation $calculate_2 calculate *= $3 number
scoreboard players operation $calculate_2 calculate /= $4 number


# rest of multiplcation
scoreboard players operation $calculate calculate *= $2 number

# adding the quarter
scoreboard players operation $calculate calculate += $calculate_2 calculate

scoreboard players operation $calculate calculate += $save_before_division calculate

# saving remainder so it can be readded
scoreboard players operation $save_before_division calculate = $calculate calculate
scoreboard players operation $save_before_division calculate %= $100 number


# dividing and adding
scoreboard players operation $calculate calculate /= $100 number



scoreboard players operation @s b_damage += $calculate calculate

# if it is the last one, display the new addition
execute if score @s calculate matches 1 run scoreboard players operation $display_damage_boost calculate = $calculate calculate

# seeing if we need to do it again
scoreboard players remove @s calculate 1
execute if score @s calculate matches 1.. run function game:mechanics/stat_boosts/calculate_damage_booster_percentage