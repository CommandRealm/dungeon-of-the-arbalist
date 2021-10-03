##Called when we take damage with a rabbits foot

clear @s rabbit_foot 1

playsound minecraft:item.shield.break master @a ~ ~ ~ 0.25 2

tellraw @s [{"text":" - ","color":"gray"},{"text":"You lost a rabbit's foot!","color":"yellow"}]