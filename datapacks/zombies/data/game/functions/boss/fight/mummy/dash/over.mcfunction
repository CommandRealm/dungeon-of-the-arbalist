##Called when the dash is over

effect clear @e[type=wither_skeleton,tag=boss,limit=1] speed

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200