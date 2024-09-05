##Called to teleport us out of the parkour area.

##tag
tag @s remove parkour

##gamemode
gamemode adventure @s[gamemode=!adventure]

clear @s minecraft:tipped_arrow

##sound
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

return 1