scoreboard players add $shooting cpt_forge_timer 1
execute if score $shooting cpt_forge_timer matches 10 run function game:enemy/cpt_forge/shoot
execute if score $shooting cpt_forge_timer matches 10 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0

execute if score $shooting cpt_forge_timer matches 30 run function game:enemy/cpt_forge/shoot
execute if score $shooting cpt_forge_timer matches 30 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0

execute if score $shooting cpt_forge_timer matches 50 run function game:enemy/cpt_forge/shoot
execute if score $shooting cpt_forge_timer matches 50 run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0
execute if score $shooting cpt_forge_timer matches 51.. run tag @s add cpt_cooldown
execute if score $shooting cpt_forge_timer matches 51.. run tag @s remove cpt_shooting
execute if score $shooting cpt_forge_timer matches 51.. run scoreboard players set $shooting cpt_forge_timer 0