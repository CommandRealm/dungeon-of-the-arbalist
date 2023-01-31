# called to become invisible again

tag @s remove visible
item replace entity @s armor.head with air
item replace entity @s armor.chest with air

particle witch ~ ~ ~ 0.1 0.5 0.1 0.1 100

# sounds
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 2