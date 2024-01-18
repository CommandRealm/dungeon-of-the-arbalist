##Main extra damage function
scoreboard players remove @e[tag=enemy,scores={e_damage_timer=1..}] e_damage_timer 1
execute as @e[tag=enemy,scores={e_damage_timer=0}] at @s run function game:enemy/extra_damage/timer_over