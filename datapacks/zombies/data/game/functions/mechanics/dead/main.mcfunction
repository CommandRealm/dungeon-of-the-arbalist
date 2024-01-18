##Main function for when there is a dead player.


##When we shoot a bow.
execute as @a[tag=playing,team=enemy,scores={shoot_bow=1..}] at @s run function game:mechanics/dead/shoot_bow

execute as @a[tag=playing,team=enemy,advancements={game:dead_player_hit_player=true}] at @s run function game:mechanics/dead/hit_player


##if someone has a revive timer
execute if entity @a[tag=playing,team=enemy,scores={respawn_timer=1..}] run function game:mechanics/dead/respawn/main


##Particles
execute at @a[tag=playing,team=enemy,scores={dead_particle=0},gamemode=adventure] run particle cloud ~ ~1.25 ~ 0.05 0.05 0.05 0.05 1