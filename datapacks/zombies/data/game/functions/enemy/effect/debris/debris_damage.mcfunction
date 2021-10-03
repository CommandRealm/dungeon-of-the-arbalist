##Called when we're dealing debris damage

##Setting the amount of damage
scoreboard players set @s calculate_2 8

##Tagging so we don't add in RNG to the damage
tag @s add no_rng

##Function call
function game:enemy/take_damage

##Removing tag
tag @s remove no_rng

##Particles
particle item stone ~ ~1 ~ 0.25 0.25 0.25 0.15 5
particle item andesite ~ ~1 ~ 0.25 0.25 0.25 0.15 5
particle item cobblestone ~ ~1 ~ 0.25 0.25 0.25 0.15 5
particle item cyan_terracotta ~ ~1 ~ 0.25 0.25 0.25 0.15 5

##Sound
playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1.25