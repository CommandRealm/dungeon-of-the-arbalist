##Called to attack as the mummy.

##If it's the knights and there are already knights, go back to the darkness attack
execute if score $attack_id boss matches 2 if entity @e[type=zombie,tag=knight_zombie_torthar,tag=boss_minion] run scoreboard players set $attack_id boss 1

execute if score $attack_id boss matches 1 run function game:boss/fight/mummy/wave/start
execute if score $attack_id boss matches 2 run function game:boss/fight/mummy/summon_knights
execute if score $attack_id boss matches 3 run function game:boss/fight/mummy/dash/start
execute if score $attack_id boss matches 4 run function game:boss/fight/mummy/clouds/start