##called when a spectator wants to go back to the lobby

##basic stuff
effect clear @s
gamemode adventure @s
clear @s
tp @s 7 91 22 45 0

##rank
function general:rank

##msg
tellraw @s {"text":"Returned to lobby.","color":"gray"}

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##sound
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0


execute if score $mode settings matches 0 if score $wave_length game matches 1.. run bossbar set game:wave players @a[x=0,y=66,z=0,distance=500..]
execute if score $started boss matches 1 run bossbar set game:boss players @a[x=0,y=66,z=0,distance=500..]