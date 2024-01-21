# called for volcanic burn
##Dealing fire damage
execute unless score @s burning_timer matches 0.. run scoreboard players set @s burning_timer 20
execute unless score @s burning_times matches 0.. run scoreboard players set @s burning_times 7