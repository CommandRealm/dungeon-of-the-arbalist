##called to convert rgb to decimal value.

scoreboard players operation $calculate calculate = $red color
scoreboard players operation $calculate calculate *= $65536 number

scoreboard players operation $calculate_2 calculate = $green color
scoreboard players operation $calculate_2 calculate *= $256 number

scoreboard players set $color calculate 0
scoreboard players operation $color calculate += $blue color
scoreboard players operation $color calculate += $calculate calculate
scoreboard players operation $color calculate += $calculate_2 calculate