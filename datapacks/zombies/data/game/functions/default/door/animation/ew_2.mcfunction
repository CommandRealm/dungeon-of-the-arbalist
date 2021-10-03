##Animation frame for door opening


##actual door
clone ~ ~ ~-3 ~ ~3 ~-3 ~ ~ ~-4 replace
clone ~ ~ ~-2 ~ ~5 ~-2 ~ ~ ~-3 replace

clone ~ ~ ~2 ~ ~3 ~2 ~ ~ ~3 replace
clone ~ ~ ~1 ~ ~5 ~1 ~ ~ ~2 replace


##Moving handles
clone ~1 ~1 ~1 ~1 ~3 ~1 ~1 ~1 ~2 replace move
clone ~-1 ~1 ~1 ~-1 ~3 ~1 ~-1 ~1 ~2 replace move

clone ~1 ~1 ~-2 ~1 ~3 ~-2 ~1 ~1 ~-3 replace move
clone ~-1 ~1 ~-2 ~-1 ~3 ~-2 ~-1 ~1 ~-3 replace move

##trapdoors
fill ~1 ~2 ~3 ~1 ~2 ~3 air
fill ~-1 ~2 ~3 ~-1 ~2 ~3 air

fill ~1 ~2 ~-4 ~1 ~2 ~-4 air
fill ~-1 ~2 ~-4 ~-1 ~2 ~-4 air
##Removing the middle
fill ~ ~ ~1 ~ ~5 ~ air 
fill ~ ~ ~-2 ~ ~5 ~-1 air


##Fixing upper area
##setblock ~ ~6 ~1 stone_brick_slab[type=top]
##setblock ~ ~6 ~-2 stone_brick_slab[type=top]