##Transforming
execute if score $transform boss matches 100 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 90 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75

execute if score $transform boss matches 50 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 40 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 35 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 30 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 25 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 20 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 15 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 10 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75
execute if score $transform boss matches 5 at @e[type=magma_cube,tag=boss] run playsound minecraft:entity.magma_cube.hurt master @s ~ ~ ~ 1 0.75


execute if score $transform boss matches 50 run data modify entity @e[type=magma_cube,tag=boss,limit=1] Size set value 5
execute if score $transform boss matches 20 run data modify entity @e[type=magma_cube,tag=boss,limit=1] Size set value 6