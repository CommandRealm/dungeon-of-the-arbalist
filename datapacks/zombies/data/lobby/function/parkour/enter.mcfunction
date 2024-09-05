##Called to make a player enter the parkour

##Sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.35

##Parkour tag
tag @s add parkour

##Resetting our dropped arrow
scoreboard players reset @s end_parkour

##Msg
tellraw @s [{"text":"☀","color":"gray","type":"text"},{"text":" You started the parkour!","color":"green","type":"text"}]

##Resetting our timer
scoreboard players set @s parkour_time 0
return 1