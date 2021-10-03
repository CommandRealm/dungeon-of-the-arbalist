# Phase 1
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=!cpt_king_waiting,tag=!cpt_king_fall,tag=!cpt_king_flee] at @s run scoreboard players add @s cpt_king_timer 1
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=!cpt_king_waiting,tag=!cpt_king_fall,tag=!cpt_king_flee] at @s if score @s cpt_king_timer matches 320.. run function game:enemy/cpt_king/guards
# Fleeing
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=cpt_king_phase1] at @s if score @s enemy_health <= $half_health cpt_king_timer run data merge entity @s {Invulnerable:1b}
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=cpt_king_phase1] at @s if score @s enemy_health <= $half_health cpt_king_timer run tag @s add cpt_king_flee
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=cpt_king_phase1] at @s if score @s enemy_health <= $half_health cpt_king_timer run function game:enemy/cpt_king/flee
# Waiting
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=cpt_king_waiting] at @s run function game:enemy/cpt_king/waiting
# Fall
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=cpt_king_fall] at @s unless block ~ ~-1 ~ air run function game:enemy/cpt_king/fall