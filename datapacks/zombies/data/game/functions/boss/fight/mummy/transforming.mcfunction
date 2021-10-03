##Transforming


execute if score $transform boss matches 100 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 90 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0

execute if score $transform boss matches 50 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 40 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 35 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 30 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 25 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 20 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 15 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 10 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0
execute if score $transform boss matches 5 at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 0.5 0

execute if score $transform boss matches 0 run function game:boss/fight/mummy/transform_end
