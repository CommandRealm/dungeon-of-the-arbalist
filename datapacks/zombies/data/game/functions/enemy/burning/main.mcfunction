##Called when an enemy is burning
scoreboard players remove @s burning_timer 1
execute if entity @s[scores={burning_timer=0}] run function game:enemy/burning/take_damage