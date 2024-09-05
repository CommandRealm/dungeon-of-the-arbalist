##Called when the dash is over

effect clear @e[type=minecraft:wither_skeleton,tag=boss,limit=1] minecraft:speed

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200
return 1