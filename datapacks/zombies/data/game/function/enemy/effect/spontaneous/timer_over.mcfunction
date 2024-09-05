##Called when we (the enemy) should activate the aoe

scoreboard players reset @s spontaneous_time

##Activating the AOE
execute as @e[distance=..2,tag=enemy] at @s unless score @s burning_timer matches 0.. run scoreboard players set @s burning_timer 20
execute as @e[distance=..2,tag=enemy] at @s unless score @s burning_times matches 0.. run scoreboard players set @s burning_times 3


##Particles and sound
particle minecraft:lava ~ ~1 ~ 0.75 0.75 0.75 0.25 50
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1
return 1