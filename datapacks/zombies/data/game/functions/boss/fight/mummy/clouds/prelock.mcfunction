##called before the positions lock

##Particles
execute at @a[tag=playing,tag=boss_clouds] run particle falling_dust black_concrete ~ ~5 ~ 0.25 0.25 0.25 0.15 20
execute at @a[tag=playing,tag=boss_clouds] run particle falling_dust yellow_concrete ~ ~5 ~ 0.25 0.25 0.25 0.15 10
execute at @a[tag=playing,tag=boss_clouds] run particle smoke ~ ~5 ~ 0.25 0.25 0.25 0.35 10

execute if score $attack boss matches 15 run function game:boss/fight/mummy/clouds/lock