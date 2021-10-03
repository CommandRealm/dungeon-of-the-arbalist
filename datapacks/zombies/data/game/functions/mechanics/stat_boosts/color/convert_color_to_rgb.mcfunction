##Called to convert colors to RGB values.

##Red
scoreboard players operation $red color = @s color
scoreboard players operation $red color /= $65536 number

##Green
scoreboard players operation $calculate color = $red color
scoreboard players operation $calculate color *= $65536 number
scoreboard players operation $green color = @s color
scoreboard players operation $green color -= $calculate color
scoreboard players operation $green color /= $256 number

##Blue
scoreboard players operation $calculate color = $red color
scoreboard players operation $calculate color *= $65536 number
scoreboard players operation $calculate_2 color = $green color
scoreboard players operation $calculate_2 color *= $256 number
scoreboard players operation $calculate color += $calculate_2 color
scoreboard players operation $blue color = @s color
scoreboard players operation $blue color -= $calculate color