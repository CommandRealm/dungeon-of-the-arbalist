##called when the ravager fight is going.
effect clear @a[tag=playing,tag=in_boss_room] wither

##Speed (must be spammed for whatever reason)

execute if score $phase boss matches 1 run effect give @e[type=ravager,tag=boss,limit=1] slowness 1 0 true
