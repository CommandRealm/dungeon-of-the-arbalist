##Function for when an electrostatic crossbow's arrow exists
execute at @e[type=arrow,tag=electrostatic_arrow] run kill @e[type=arrow,distance=..4.5,tag=!player_arrow]