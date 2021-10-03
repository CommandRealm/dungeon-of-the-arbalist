##Called to teleport us out of the parkour area.

##tag
tag @s remove parkour

##gamemode
gamemode adventure @s[gamemode=!adventure]

##tp, particle, and sounds
tp @s 4 90 83 0 5
particle cloud 4 91 83 0.5 1 0.5 0.25 50
playsound minecraft:entity.enderman.teleport master @a 4 90 83 1 1.5
