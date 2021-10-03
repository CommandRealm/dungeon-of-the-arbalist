##Called when there is a door opening.
execute as @e[type=area_effect_cloud,tag=doorway,scores={death_timer=16}] at @s run function game:default/door/animation/1
execute as @e[type=area_effect_cloud,tag=doorway,scores={death_timer=11}] at @s run function game:default/door/animation/2
execute as @e[type=area_effect_cloud,tag=doorway,scores={death_timer=6}] at @s run function game:default/door/animation/3
execute as @e[type=area_effect_cloud,tag=doorway,scores={death_timer=1}] at @s run function game:default/door/animation/4