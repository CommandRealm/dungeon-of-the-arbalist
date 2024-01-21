
advancement revoke @s only game:enemy_damage/wind_zombie


scoreboard players set $mod random 20
function random:random
scoreboard players add @s wind 9
scoreboard players operation @s wind += $rand random


tag @s add temp
# if it was a bandit
execute as @e[type=zombie,tag=wind_zombie,sort=nearest,limit=1] at @s if entity @s[tag=enhanced] run scoreboard players add @s[tag=temp] wind 9
tag @s remove temp

function game:mechanics/wind/start