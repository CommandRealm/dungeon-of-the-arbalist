##Called if there is an active witch zombie
scoreboard players remove @e[type=zombie,tag=witch_zombie] attack 1
execute as @e[type=zombie,tag=witch_zombie,scores={attack=..0}] at @s run function game:enemy/witch/throw_potion