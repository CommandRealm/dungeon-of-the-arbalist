##Called to subtract the minute from seconds.

scoreboard players operation $calculate calculate = $minute calculate
scoreboard players operation $calculate calculate *= $60 number
scoreboard players operation $second calculate -= $calculate calculate