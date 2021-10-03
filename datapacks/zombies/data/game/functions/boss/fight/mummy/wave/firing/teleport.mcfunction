##Called to teleport the boss

##Particles before teleporting
execute at @e[type=wither_skeleton,tag=boss,limit=1] run particle smoke ~ ~0.75 ~ 0.15 0.33 0.15 0.15 50
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2

##Teleport and kill
tp @e[type=wither_skeleton,tag=boss,limit=1] @e[type=area_effect_cloud,tag=wave_start_point,sort=random,limit=1]


##Particles after
execute at @e[type=wither_skeleton,tag=boss,limit=1] run particle smoke ~ ~0.75 ~ 0.15 0.33 0.15 0.15 50
execute at @e[type=wither_skeleton,tag=boss,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2