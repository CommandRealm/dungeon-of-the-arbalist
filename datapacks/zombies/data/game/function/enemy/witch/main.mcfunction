##Called if there is an active witch zombie
scoreboard players remove @e[type=minecraft:zombie,tag=witch_zombie] attack 1
execute as @e[type=minecraft:zombie,tag=witch_zombie,scores={attack=..0}] at @s run function game:enemy/witch/throw_potion
return 1