##Transforming
##Particles
execute at @e[type=zombie,tag=boss] run particle sneeze ~ ~1 ~ 0.33 0.33 0.33 0.15 1 force @a
execute at @e[type=zombie,tag=boss] run particle happy_villager ~ ~1 ~ 0.0 0.5 0.0 0 5 force @a

execute if score $transform boss matches 100 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 90 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0

execute if score $transform boss matches 50 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 40 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 35 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 30 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 25 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 20 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 15 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 10 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 5 at @e[type=zombie,tag=boss] run playsound minecraft:entity.vex.death master @a ~ ~ ~ 0.5 0
