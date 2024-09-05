scoreboard players add $speed husk_timer 1

execute if score $speed husk_timer matches 1..99 run attribute @s minecraft:generic.movement_speed base set 0.8
execute if score $speed husk_timer matches 1..99 run attribute @s minecraft:generic.attack_damage base set 0.25
execute if score $speed husk_timer matches 1..99 run particle minecraft:dust{color:[0.537f,0.855f,1.0f],scale:1.0f} ~ ~ ~ 0 1 0 0 10 normal
execute if score $speed husk_timer matches 1..99 run enchant @s minecraft:efficiency 1

execute if score $speed husk_timer matches 100.. run item replace entity @s weapon.mainhand with minecraft:iron_shovel
execute if score $speed husk_timer matches 100.. run attribute @s minecraft:generic.movement_speed base set 0.3
execute if score $speed husk_timer matches 100.. run attribute @s minecraft:generic.attack_damage base set 0
execute if score $speed husk_timer matches 100.. run tag @s add husk_cooldown
execute if score $speed husk_timer matches 100.. run tag @s remove husk_speed
execute if score $speed husk_timer matches 100.. run scoreboard players set $speed husk_timer 0
return 1