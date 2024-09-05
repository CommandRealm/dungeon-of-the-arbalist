##called before the positions lock

##Particles
execute at @a[tag=playing,tag=boss_clouds] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete"}} ~ ~5 ~ 0.25 0.25 0.25 0.15 20
execute at @a[tag=playing,tag=boss_clouds] run particle minecraft:falling_dust{block_state:{Name:"minecraft:yellow_concrete"}} ~ ~5 ~ 0.25 0.25 0.25 0.15 10
execute at @a[tag=playing,tag=boss_clouds] run particle minecraft:smoke ~ ~5 ~ 0.25 0.25 0.25 0.35 10

execute if score $attack boss matches 15 run function game:boss/fight/mummy/clouds/lock
return 1