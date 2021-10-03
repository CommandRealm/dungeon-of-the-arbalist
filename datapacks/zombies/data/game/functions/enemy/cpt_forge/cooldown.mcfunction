scoreboard players add $cooldown cpt_forge_timer 1
execute if score $cooldown cpt_forge_timer matches 80.. run tag @s remove cpt_cooldown
execute if score $cooldown cpt_forge_timer matches 80.. run scoreboard players set $cooldown cpt_forge_timer 0