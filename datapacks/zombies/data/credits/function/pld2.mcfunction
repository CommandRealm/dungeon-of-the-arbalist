scoreboard players remove @e[tag=pl] pl 2
execute if entity @e[tag=pl,scores={pl=1..4}] run scoreboard players set $direction pld 1
return 1