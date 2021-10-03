scoreboard players add $chargeup cpt_forge_timer 1

execute if score $chargeup cpt_forge_timer matches 20 run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1
execute if score $chargeup cpt_forge_timer matches 20..60 run particle dust 1 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup cpt_forge_timer matches 60 run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.25
execute if score $chargeup cpt_forge_timer matches 61..80 run particle dust 0.6 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup cpt_forge_timer matches 80 run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
execute if score $chargeup cpt_forge_timer matches 81..99 run particle dust 0.2 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup cpt_forge_timer matches 99 run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 2
execute if score $chargeup cpt_forge_timer matches 100.. run tag @s add cpt_shooting
execute if score $chargeup cpt_forge_timer matches 100.. run scoreboard players set $chargeup cpt_forge_timer 0