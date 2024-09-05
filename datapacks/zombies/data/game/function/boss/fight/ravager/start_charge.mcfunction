##CAlled to start the charge


data modify entity @e[type=minecraft:ravager,tag=boss,limit=1] NoAI set value 1b
execute as @e[type=minecraft:ravager,tag=boss,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]

##sound
execute at @e[type=minecraft:ravager,tag=boss,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0
execute at @e[type=minecraft:ravager,tag=boss,limit=1] run particle minecraft:lava ~ ~1 ~ 2 2 2 0.25 50
return 1