##Called to make the magma cube charge.
particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0 0 0 0.2 10

execute if score $charge boss matches 6 run data modify entity @e[type=minecraft:magma_cube,tag=boss,limit=1] NoAI set value 1b
return 1