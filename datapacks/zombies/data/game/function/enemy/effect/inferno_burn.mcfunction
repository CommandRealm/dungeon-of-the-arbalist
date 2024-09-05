##combustion aoe damage

##Dealing aoe damage
execute as @e[distance=..5,tag=enemy] at @s unless score @s burning_timer matches 0.. run scoreboard players set @s burning_timer 20
execute as @e[distance=..5,tag=enemy] at @s unless score @s burning_times matches 0.. run scoreboard players set @s burning_times 4
return 1