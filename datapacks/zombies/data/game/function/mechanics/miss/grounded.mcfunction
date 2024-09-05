##called when the grounded arrow misses


##particles
particle minecraft:item{item:"minecraft:cyan_concrete_powder"} ~ ~ ~ 0 0 0 0.15 15

##effect
effect give @a[gamemode=adventure,distance=..1.5,tag=playing] minecraft:speed 5 0 false

return 1