##Called when there is a spawn delay.
scoreboard players remove @e[type=marker,scores={spawn_delay=1..}] spawn_delay 1
execute as @e[type=marker,scores={spawn_delay=0}] at @s run function game:mechanics/spawn_delay/spawn