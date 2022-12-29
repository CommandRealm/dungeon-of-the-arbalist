# called to add in the remainder


scoreboard players add $calculate calculate 50
scoreboard players remove @s revive_remainder 50
execute if score @s revive_remainder matches 50.. run function game:mechanics/revive/revive_timer_remainder