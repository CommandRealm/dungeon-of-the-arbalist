##Second frame
execute if entity @s[tag=east_west] positioned ~ ~ ~0.5 run function game:default/door/animation/ew_4
execute if entity @s[tag=north_south] positioned ~0.5 ~ ~ run function game:default/door/animation/ns_4

##sounds
playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 0.5 0.75
playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.85

##kill
kill @s