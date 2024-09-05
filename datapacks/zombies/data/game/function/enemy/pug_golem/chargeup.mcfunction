scoreboard players add $chargeup pug_golem_timer 1
execute if score $chargeup pug_golem_timer matches 10 run data merge entity @s {Invulnerable:1b}

execute if score $chargeup pug_golem_timer matches 10 run attribute @s minecraft:generic.movement_speed base set .55
execute if score $chargeup pug_golem_timer matches 20 run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 3 1
execute if score $chargeup pug_golem_timer matches 20..60 run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 60 run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 3 1.25
execute if score $chargeup pug_golem_timer matches 61..80 run particle minecraft:dust{color:[0.6f,0.0f,0.0f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 80 run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 3 1.5
execute if score $chargeup pug_golem_timer matches 81..99 run particle minecraft:dust{color:[0.2f,0.0f,0.0f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 99 run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 3 2

#Aim Charge
execute if score $chargeup pug_golem_timer matches 10..99 run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,team=game]
execute if score $chargeup pug_golem_timer matches 100.. run tag @s add pug_charging
execute if score $chargeup pug_golem_timer matches 100.. run scoreboard players set $chargeup pug_golem_timer 0
execute if score $chargeup pug_golem_timer matches 100.. run effect give @s minecraft:weakness 5 127 true
return 1