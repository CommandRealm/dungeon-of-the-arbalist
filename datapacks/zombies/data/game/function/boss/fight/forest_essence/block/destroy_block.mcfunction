##Particles
execute if entity @s[tag=essence_grass] run particle minecraft:item{item:"minecraft:grass_block"} ~ ~ ~ 0 0 0 0.15 50
execute if entity @s[tag=essence_mossy] run particle minecraft:item{item:"minecraft:mossy_cobblestone"} ~ ~ ~ 0 0 0 0.15 50
execute if entity @s[tag=essence_leaves] run particle minecraft:item{item:"minecraft:oak_leaves"} ~ ~ ~ 0 0 0 0.15 50
execute if entity @s[tag=essence_bee] run particle minecraft:item{item:"minecraft:bee_nest"} ~ ~ ~ 0 0 0 0.15 50
execute if entity @s[tag=essence_melon] run particle minecraft:item{item:"minecraft:melon"} ~ ~ ~ 0 0 0 0.15 50

##Sound
execute if entity @s[tag=essence_grass] run playsound minecraft:block.grass.break master @a
execute if entity @s[tag=essence_mossy] run playsound minecraft:block.stone.break master @a
execute if entity @s[tag=essence_leaves] run playsound minecraft:block.grass.break master @a
execute if entity @s[tag=essence_bee] run playsound minecraft:block.wood.break master @a
execute if entity @s[tag=essence_melon] run playsound minecraft:block.wood.break master @a

##Kill
execute positioned ~ ~-0.75 ~ run kill @e[type=minecraft:armor_stand,tag=essence_block_marker,sort=nearest,limit=1]
kill @s

return 1