scoreboard players add @s enderman_timer 1
execute if score @s enderman_timer matches 150.. run tag @s remove enderman_cooldown
execute if score @s enderman_timer matches 150.. run scoreboard players reset @s enderman_timer