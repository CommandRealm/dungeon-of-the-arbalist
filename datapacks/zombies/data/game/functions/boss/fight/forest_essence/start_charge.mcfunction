##Called to start the charge


##sound
execute at @e[tag=boss,limit=1] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 1

##Particle
execute at @e[tag=boss,limit=1] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 20
