scoreboard players add @e[tag=pl] pl 2
execute if entity @e[tag=pl,scores={pl=41..44}] run scoreboard players set $direction pld 2
return 1