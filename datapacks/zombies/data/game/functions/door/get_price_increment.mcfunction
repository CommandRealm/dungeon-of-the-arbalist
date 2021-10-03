##Getting initial price increment score.

scoreboard players operation $calculate calculate = @s price_left

scoreboard players operation $calculate calculate /= $4 number

scoreboard players operation @s price_increment = $calculate calculate