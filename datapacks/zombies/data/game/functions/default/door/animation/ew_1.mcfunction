##Animation frame for door opening


##actual door
clone ~ ~ ~-3 ~ ~3 ~-3 ~ ~ ~-4 replace
clone ~ ~ ~-2 ~ ~5 ~-2 ~ ~ ~-3 replace
clone ~ ~ ~-1 ~ ~5 ~-1 ~ ~ ~-2 replace


clone ~ ~ ~2 ~ ~3 ~2 ~ ~ ~3 replace
clone ~ ~ ~1 ~ ~5 ~1 ~ ~ ~2 replace
clone ~ ~ ~ ~ ~5 ~ ~ ~ ~1 replace


##Moving handles
clone ~1 ~1 ~ ~1 ~3 ~ ~1 ~1 ~1 replace move
clone ~-1 ~1 ~ ~-1 ~3 ~ ~-1 ~1 ~1 replace move

clone ~1 ~1 ~-1 ~1 ~3 ~-1 ~1 ~1 ~-2 replace move
clone ~-1 ~1 ~-1 ~-1 ~3 ~-1 ~-1 ~1 ~-2 replace move

##trapdoors
clone ~1 ~2 ~2 ~1 ~2 ~2 ~1 ~2 ~3 replace move
clone ~-1 ~2 ~2 ~-1 ~2 ~2 ~-1 ~2 ~3 replace move

clone ~1 ~2 ~-3 ~1 ~2 ~-3 ~1 ~2 ~-4 replace move
clone ~-1 ~2 ~-3 ~-1 ~2 ~-3 ~-1 ~2 ~-4 replace move

##Removing the middle
fill ~ ~ ~ ~ ~6 ~ air 
fill ~ ~ ~-1 ~ ~6 ~-1 air
