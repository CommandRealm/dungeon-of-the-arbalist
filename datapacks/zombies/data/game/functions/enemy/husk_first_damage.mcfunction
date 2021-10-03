##called when the husk takes it's first damage


##Resetting our score
scoreboard players set @s calculate_2 0

##removing the armor
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

##sound
playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.67

##Particles
particle item iron_block ~ ~1 ~ 0.33 0.33 0.33 0.15 10

##tag

tag @s add hit_before
tag @s add no_rng