##Called to make a player enter the parkour

##Sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.35

##Parkour tag
tag @s add parkour

##Resetting our dropped arrow
scoreboard players reset @s end_parkour

##Msg
tellraw @s [{"text":"☀","color":"gray"},{"text":" You started the parkour!","color":"green"}]

##Resetting our timer
execute store result score $ticks parkour_time run worldborder get
execute if score $ticks parkour_time matches 59000000.. run function lobby:parkour/set_worldborder

execute store result score @s parkour_start run worldborder get