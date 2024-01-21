# called for main wind function

scoreboard players remove @s wind_delay 1
execute if score @s wind_delay matches ..0 run function game:mechanics/wind/remove_arrow