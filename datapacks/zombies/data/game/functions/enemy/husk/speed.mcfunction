scoreboard players add $speed husk_timer 1

execute if score $speed husk_timer matches 1..99 run attribute @s minecraft:generic.movement_speed base set 0.8
execute if score $speed husk_timer matches 1..99 run attribute @s minecraft:generic.attack_damage base set 0.25
execute if score $speed husk_timer matches 1..99 run particle dust 0.537 0.855 1 1 ~ ~ ~ 0 1 0 0 10 normal
execute if score $speed husk_timer matches 1..99 run enchant @s efficiency 1

execute if score $speed husk_timer matches 100.. run item replace entity @s weapon.mainhand with iron_shovel
execute if score $speed husk_timer matches 100.. run attribute @s minecraft:generic.movement_speed base set 0.3
execute if score $speed husk_timer matches 100.. run attribute @s minecraft:generic.attack_damage base set 0
execute if score $speed husk_timer matches 100.. run tag @s add husk_cooldown
execute if score $speed husk_timer matches 100.. run tag @s remove husk_speed
execute if score $speed husk_timer matches 100.. run scoreboard players set $speed husk_timer 0