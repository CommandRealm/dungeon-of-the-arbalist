##Called after the clouds position is locked.

##Particles
execute at @e[type=area_effect_cloud,tag=boss_cloud] run particle falling_dust black_concrete ~ ~5 ~ 0.25 0.25 0.25 0.15 20
execute at @e[type=area_effect_cloud,tag=boss_cloud] run particle falling_dust yellow_concrete ~ ~5 ~ 0.25 0.25 0.25 0.15 10
execute at @e[type=area_effect_cloud,tag=boss_cloud] run particle smoke ~ ~5 ~ 0.25 0.25 0.25 0.35 10

##Strike
execute if score $attack boss matches 0 run function game:boss/fight/mummy/clouds/over