##called when we choose to end the parkour.

##resetting objective
scoreboard players reset @s end_parkour

##playing sound and Msg
tellraw @s [{"text":"☀","color":"gray","type":"text"},{"text":" You left the parkour.","color":"red","type":"text"}]

kill @e[type=minecraft:item,x=0,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:tipped_arrow"}}]

##Teleport and particles
function lobby:parkour/leave
return 1