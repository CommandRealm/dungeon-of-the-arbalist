##Called when the clouds attack should be over.

##enabling ai
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] NoAI set value 0b

##Cooldowns
scoreboard players set $cooldown boss 200
scoreboard players set $active_attack boss 0

execute as @e[type=area_effect_cloud,tag=boss_cloud] at @s run function game:boss/fight/mummy/clouds/strike

