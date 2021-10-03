##Death timer function

##If there is a door opening:
execute if score $mode settings matches 0 if entity @e[type=area_effect_cloud,tag=doorway,scores={death_timer=1..}] run function game:default/door/animation/main



scoreboard players remove @e[tag=on_death_timer] death_timer 1
execute as @e[scores={death_timer=..0},tag=on_death_timer] at @s run function game:death_timer_over