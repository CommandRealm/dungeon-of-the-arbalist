# called for particle cooldown

scoreboard players remove @s attack 1
execute if score @s attack matches ..0 run function game:trials/footprints/particle_cooldown/particle