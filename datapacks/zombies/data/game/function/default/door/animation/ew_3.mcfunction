##Animation frame for door opening



##actual door
clone ~ ~ ~-3 ~ ~3 ~-3 ~ ~ ~-4 replace
##clone ~ ~ ~-2 ~ ~5 ~-2 ~ ~ ~-3 replace


clone ~ ~ ~2 ~ ~3 ~2 ~ ~ ~3 replace
##clone ~ ~ ~1 ~ ~5 ~1 ~ ~ ~2 replace

##Moving handles
fill ~1 ~1 ~2 ~1 ~3 ~2 minecraft:air
fill ~-1 ~1 ~2 ~-1 ~3 ~2 minecraft:air

fill ~1 ~1 ~-3 ~1 ~3 ~-3 minecraft:air
fill ~-1 ~1 ~-3 ~-1 ~3 ~-3 minecraft:air



##Removing the middle
fill ~ ~ ~2 ~ ~5 ~ minecraft:air
fill ~ ~ ~-3 ~ ~5 ~-1 minecraft:air

return 1