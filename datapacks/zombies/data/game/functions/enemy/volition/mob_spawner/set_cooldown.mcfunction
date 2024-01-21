# setting our cooldown
scoreboard players set @s attack 180
execute if score $wave_length game matches ..-1 run scoreboard players add @s attack 200

# if its enhanced
scoreboard players remove @s[tag=enhanced] attack 80

# randomizing value
scoreboard players set $rand random 100
function random:random

# subtracting it so we have a new random value from 150 to 250
scoreboard players operation @s attack -= $rand random