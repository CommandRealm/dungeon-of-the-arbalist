##Called to start the charge


##sound
execute at @e[type=magma_cube,tag=boss,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0
execute at @e[type=magma_cube,tag=boss,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.67
execute at @e[type=magma_cube,tag=boss,limit=1] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.75
execute at @e[type=magma_cube,tag=boss,limit=1] run particle lava ~ ~1 ~ 2 2 2 0.25 50