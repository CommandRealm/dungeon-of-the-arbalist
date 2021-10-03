scoreboard players add $cooldown husk_timer 1
execute if score $cooldown husk_timer matches 100.. run tag @s remove husk_cooldown
execute if score $cooldown husk_timer matches 100.. run scoreboard players set $cooldown husk_timer 0