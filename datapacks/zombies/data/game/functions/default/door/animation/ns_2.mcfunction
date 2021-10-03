##Animation frame for door opening


##actual door
clone ~-3 ~ ~ ~-3 ~3 ~ ~-4 ~ ~ replace
clone ~-2 ~ ~ ~-2 ~5 ~ ~-3 ~ ~ replace

clone ~2 ~ ~ ~2 ~3 ~ ~3 ~ ~ replace
clone ~1 ~ ~ ~1 ~5 ~ ~2 ~ ~ replace


##Moving handles
clone ~1 ~1 ~1 ~1 ~3 ~1 ~2 ~1 ~1 replace move
clone ~1 ~1 ~-1 ~1 ~3 ~-1 ~2 ~1 ~-1 replace move

clone ~-2 ~1 ~1 ~-2 ~3 ~1 ~-3 ~1 ~1 replace move
clone ~-2 ~1 ~-1 ~-2 ~3 ~-1 ~-3 ~1 ~-1 replace move

##trapdoors
fill ~3 ~2 ~1 ~3 ~2 ~1 air
fill ~3 ~2 ~-1 ~3 ~2 ~-1 air

fill ~-4 ~2 ~1 ~-4 ~2 ~1 air
fill ~-4 ~2 ~-1 ~-4 ~2 ~-1 air
##Removing the middle
fill ~1 ~ ~ ~ ~5 ~ air 
fill ~-2 ~ ~ ~-1 ~5 ~ air


##Fixing upper area
##setblock ~ ~6 ~1 stone_brick_slab[type=top]
##setblock ~ ~6 ~-2 stone_brick_slab[type=top]