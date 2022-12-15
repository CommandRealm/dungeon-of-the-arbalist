##called by us (the shopkeeper) when we take damage

scoreboard players add @s attack 1

##If we've been hit more than three times, convert to an enemy
execute if score @s attack matches 3.. run function game:shops/shopkeeper/convert

##sounds and particles
particle angry_villager ~ ~1 ~ 0.4 0.8 0.4 0.33 20

playsound minecraft:entity.pillager.hurt master @a ~ ~ ~ 1 0.8

