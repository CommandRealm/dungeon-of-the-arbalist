scoreboard players add $chargeup pug_golem_timer 1
execute if score $chargeup pug_golem_timer matches 10 run data merge entity @s {Invulnerable:1b}

execute if score $chargeup pug_golem_timer matches 10 run attribute @s generic.movement_speed base set .55
execute if score $chargeup pug_golem_timer matches 20 run playsound entity.iron_golem.repair master @a ~ ~ ~ 3 1
execute if score $chargeup pug_golem_timer matches 20..60 run particle dust 1 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 60 run playsound entity.iron_golem.repair master @a ~ ~ ~ 3 1.25
execute if score $chargeup pug_golem_timer matches 61..80 run particle dust 0.6 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 80 run playsound entity.iron_golem.repair master @a ~ ~ ~ 3 1.5
execute if score $chargeup pug_golem_timer matches 81..99 run particle dust 0.2 0 0 1 ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup pug_golem_timer matches 99 run playsound entity.iron_golem.repair master @a ~ ~ ~ 3 2

#Aim Charge
execute if score $chargeup pug_golem_timer matches 10..99 run tp @s ~ ~ ~ facing entity @p[team=game,gamemode=adventure]
execute if score $chargeup pug_golem_timer matches 100.. run tag @s add pug_charging
execute if score $chargeup pug_golem_timer matches 100.. run scoreboard players set $chargeup pug_golem_timer 0
execute if score $chargeup pug_golem_timer matches 100.. run effect give @s weakness 5 127 true