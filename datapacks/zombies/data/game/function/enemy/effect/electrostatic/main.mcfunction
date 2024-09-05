##Function for when an electrostatic crossbow's arrow exists
execute at @e[type=minecraft:arrow,tag=electrostatic_arrow] run kill @e[type=minecraft:arrow,distance=..4.5,tag=!player_arrow]
return 1