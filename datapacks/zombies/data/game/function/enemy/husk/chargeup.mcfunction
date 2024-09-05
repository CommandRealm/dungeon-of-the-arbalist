scoreboard players add $chargeup husk_timer 1

#Faster and kb resistance
execute if score $chargeup husk_timer matches 1..99 run attribute @s minecraft:generic.movement_speed base set -1.0
execute if score $chargeup husk_timer matches 1..99 run attribute @s minecraft:generic.knockback_resistance base set 1.0

execute if score $chargeup husk_timer matches 1..20 run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 2 1
execute if score $chargeup husk_timer matches 20..60 run particle minecraft:dust{color:[0.0f,1.0f,1.0f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup husk_timer matches 21..60 run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 2 1.25
execute if score $chargeup husk_timer matches 61..80 run particle minecraft:dust{color:[0.0f,0.6f,0.6f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup husk_timer matches 61..80 run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 2 1.5
execute if score $chargeup husk_timer matches 81..99 run particle minecraft:dust{color:[0.0f,0.2f,0.2f],scale:1.0f} ~ ~3 ~ 0 0 0 0 1 force
execute if score $chargeup husk_timer matches 81..99 run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 2 2

#Remove modifiers
execute if score $chargeup husk_timer matches 100.. run attribute @s minecraft:generic.movement_speed base set 0.3
execute if score $chargeup husk_timer matches 100.. run attribute @s minecraft:generic.knockback_resistance base set 0.0

execute if score $chargeup husk_timer matches 100.. run tag @s add husk_speed
execute if score $chargeup husk_timer matches 100.. run scoreboard players set $chargeup husk_timer 0
return 1