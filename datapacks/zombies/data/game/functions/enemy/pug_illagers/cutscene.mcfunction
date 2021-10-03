
execute if score $cutscene_timer pug_illagers matches 25 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 45 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 60 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 70 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 75 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 77 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 78 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 79 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 80 run function game:enemy/pug_illagers/random_tp
execute if score $cutscene_timer pug_illagers matches 81.. run function game:enemy/pug_illagers/set_tp
execute if score $cutscene_timer pug_illagers matches 81.. as @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene] run data merge entity @s {Invulnerable:0b,NoAI:0b}
execute if score $cutscene_timer pug_illagers matches 81.. run tag @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene] remove pug_illagers_cutscene
execute if score $cutscene_timer pug_illagers matches 81.. run scoreboard players set $cutscene_timer pug_illagers 0

