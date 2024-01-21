##Called to convert our time into seconds and milliseconds.

##Minutes




execute store result score $test parkour_time run worldborder get
execute store result score $ticks parkour_time run worldborder get
scoreboard players operation $ticks parkour_time -= @s parkour_start

# scoreboard players operation $ticks parkour_time -= $58000000 number
scoreboard players operation $ticks parkour_time /= $5 number

scoreboard players operation @s parkour_time = $ticks parkour_time








scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate /= $minute number
scoreboard players operation $minute calculate = $calculate calculate

##Seconds
scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate /= $20 number
scoreboard players operation $second calculate = $calculate calculate

execute if score $minute calculate matches 1.. run function lobby:parkour/subtract_minute

##Milliseconds
scoreboard players operation $calculate calculate = @s parkour_time
scoreboard players operation $calculate calculate %= $20 number
scoreboard players operation $calculate calculate /= $2 number
scoreboard players operation $millisecond calculate = $calculate calculate


##Action bar
execute if score $minute calculate matches 0 run title @s[tag=parkour] actionbar [{"text":"☀ ","color":"gray"},{"text":"Time:","color":"green","underlined": true},{"text":" "},{"score":{"objective":"calculate","name":"$second"},"color":"yellow"},{"text":".","color":"gold"},{"score":{"objective":"calculate","name":"$millisecond"},"color":"yellow"}]
execute if score $minute calculate matches 1.. if entity @s[tag=parkour] run function lobby:parkour/display_minute_action_bar
