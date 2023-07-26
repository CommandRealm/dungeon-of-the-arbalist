##Called to make the magma cube charge.
particle campfire_cosy_smoke ~ ~1.5 ~ 0 0 0 0.2 10

execute if score $charge boss matches 6 run data modify entity @e[type=magma_cube,limit=1,tag=boss] NoAI set value 1b