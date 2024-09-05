##Animation frame for door opening



##actual door
clone ~-3 ~ ~ ~-3 ~3 ~ ~-4 ~ ~ replace



clone ~2 ~ ~ ~2 ~3 ~ ~3 ~ ~ replace


##Moving handles
fill ~2 ~1 ~1 ~2 ~3 ~1 minecraft:air
fill ~2 ~1 ~-1 ~2 ~3 ~-1 minecraft:air

fill ~-3 ~1 ~1 ~-3 ~3 ~1 minecraft:air
fill ~-3 ~1 ~-1 ~-3 ~3 ~-1 minecraft:air



##Removing the middle
fill ~2 ~ ~ ~ ~5 ~ minecraft:air
fill ~-3 ~ ~ ~-1 ~5 ~ minecraft:air

return 1