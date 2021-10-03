##First frame
execute if entity @s[tag=east_west] positioned ~ ~ ~0.5 run function game:default/door/animation/ew_1
execute if entity @s[tag=north_south] positioned ~0.5 ~ ~ run function game:default/door/animation/ns_1

##sounds
playsound minecraft:block.iron_trapdoor.open master @a ~ ~ ~ 1 0
playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.85