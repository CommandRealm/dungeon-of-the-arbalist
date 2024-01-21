# next timer
scoreboard players set $mod random 100
function random:random
scoreboard players set @s attack 80
scoreboard players operation @s attack += $rand random