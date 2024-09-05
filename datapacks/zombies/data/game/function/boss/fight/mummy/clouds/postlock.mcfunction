##Called after the clouds position is locked.

##Particles
execute at @e[type=minecraft:area_effect_cloud,tag=boss_cloud] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete"}} ~ ~5 ~ 0.25 0.25 0.25 0.15 20
execute at @e[type=minecraft:area_effect_cloud,tag=boss_cloud] run particle minecraft:falling_dust{block_state:{Name:"minecraft:yellow_concrete"}} ~ ~5 ~ 0.25 0.25 0.25 0.15 10
execute at @e[type=minecraft:area_effect_cloud,tag=boss_cloud] run particle minecraft:smoke ~ ~5 ~ 0.25 0.25 0.25 0.35 10

##Strike
execute if score $attack boss matches 0 run function game:boss/fight/mummy/clouds/over
return 1