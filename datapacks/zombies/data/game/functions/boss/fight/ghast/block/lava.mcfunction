##Lava

fill 2015 51 15 1984 82 -16 lava replace minecraft:magma_block
execute at @e[type=magma_cube,limit=1,tag=boss] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.75

scoreboard players set $attack boss 70