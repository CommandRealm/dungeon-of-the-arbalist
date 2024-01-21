# called when we are wearing a gas mask

# particles
execute positioned ~ ~1.65 ~ positioned ^ ^0.33 ^ run particle minecraft:spore_blossom_air ~ ~ ~ 0 0 0 1 1

# negating effects
effect clear @s darkness
effect clear @s blindness
effect clear @s poison
effect clear @s wither