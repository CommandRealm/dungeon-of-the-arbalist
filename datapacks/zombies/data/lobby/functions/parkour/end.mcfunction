##called when we choose to end the parkour.

##resetting objective
scoreboard players reset @s end_parkour

##playing sound and Msg
tellraw @s [{"text":"☀","color":"gray"},{"text":" You left the parkour.","color":"red"}]

kill @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},x=0,y=66,z=0,distance=..500]

##Teleport and particles
function lobby:parkour/leave