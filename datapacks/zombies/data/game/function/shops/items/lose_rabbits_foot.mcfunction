##Called when we take damage with a rabbits foot

clear @s minecraft:rabbit_foot 1

playsound minecraft:item.shield.break master @a ~ ~ ~ 0.25 2

tellraw @s [{"text":" - ","color":"gray","type":"text"},{"text":"You lost a rabbit's foot!","color":"yellow","type":"text"}]
return 1