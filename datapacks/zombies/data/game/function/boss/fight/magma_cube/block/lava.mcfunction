##Lava

fill 2015 51 15 1984 82 -16 minecraft:lava replace minecraft:magma_block
execute at @e[type=minecraft:magma_cube,tag=boss,limit=1] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.75

scoreboard players set $attack boss 70
return 1