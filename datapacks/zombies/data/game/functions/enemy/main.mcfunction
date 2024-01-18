##Main enemy function

##Making zombies not turn into drowneds

execute as @e[type=zombie] at @s if block ~ ~1.5 ~ water run scoreboard players add @s conversion_timer 1
execute as @e[type=zombie,scores={conversion_timer=100..}] at @s run function game:enemy/reset_conversion_timer


##If there are leaping zombies
execute if entity @e[type=zombie,tag=leaper_zombie] run function game:enemy/leaper/main

##If there are witch zombies
execute if entity @e[type=zombie,tag=witch_zombie] run function game:enemy/witch/main

##If evoker spawns a vex
execute as @e[type=vex,tag=!enemy] at @s run function game:enemy/initialize_vex

##If an enemy is burning
execute as @e[team=enemy,tag=enemy,scores={burning_timer=1..}] at @s run function game:enemy/burning/main


##Extra damage timer
execute if entity @e[team=enemy,tag=enemy,scores={e_damage_timer=1..},limit=1] run function game:enemy/extra_damage/main

##if an enemy has a spontaneous timer active
execute if entity @e[team=enemy,tag=enemy,scores={spontaneous_time=1..},limit=1] run function game:enemy/effect/spontaneous/main
