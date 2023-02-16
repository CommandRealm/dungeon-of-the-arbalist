# setting our cooldown
scoreboard players set @s attack 250

# randomizing value
scoreboard players set $rand random 100
function random:random

# subtracting it so we have a new random value from 150 to 250
scoreboard players operation @s attack -= $rand random