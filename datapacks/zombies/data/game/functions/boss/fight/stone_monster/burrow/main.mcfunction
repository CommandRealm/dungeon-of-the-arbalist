##Main burrow function
execute if score $attack boss matches 1000.. run function game:boss/fight/stone_monster/burrow/burrow

##Once the boss is underground
execute if score $attack boss matches 20 run function game:boss/fight/stone_monster/burrow/set_position
execute if score $attack boss matches 0..9 run function game:boss/fight/stone_monster/burrow/move_up
execute if score $attack boss matches 0 run function game:boss/fight/stone_monster/burrow/over

##Particles
execute at @e[type=area_effect_cloud,tag=resurface_particle] run particle item dirt ~ ~ ~ 0.1 0.1 0.1 0.15 5