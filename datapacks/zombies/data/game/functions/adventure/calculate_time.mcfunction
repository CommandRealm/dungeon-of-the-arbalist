##Called to convert our time into seconds and milliseconds.

##Minutes
scoreboard players operation $calculate calculate = @s run
scoreboard players operation $calculate calculate /= $minute number
scoreboard players operation $minute calculate = $calculate calculate

##Seconds
scoreboard players operation $calculate calculate = @s run
scoreboard players operation $calculate calculate /= $20 number
scoreboard players operation $second calculate = $calculate calculate

execute if score $minute calculate matches 1.. run function game:adventure/subtract_minute

##Milliseconds
scoreboard players operation $calculate calculate = @s run
scoreboard players operation $calculate calculate %= $20 number
scoreboard players operation $calculate calculate /= $2 number
scoreboard players operation $millisecond calculate = $calculate calculate

