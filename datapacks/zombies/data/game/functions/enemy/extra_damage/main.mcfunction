##Main extra damage function
scoreboard players remove @s e_damage_timer 1
execute if entity @s[tag=enemy,scores={e_damage_timer=0}] run function game:enemy/extra_damage/timer_over