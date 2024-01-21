# called to apply wind effect

scoreboard players set $mod random 20
function random:random
scoreboard players add @s wind 15
scoreboard players operation @s wind += $rand random
function game:mechanics/wind/start