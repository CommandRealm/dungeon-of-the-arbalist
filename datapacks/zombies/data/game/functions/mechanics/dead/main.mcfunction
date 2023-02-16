##Main function for when there is a dead player.


##When we shoot a bow.
execute if score @s shoot_bow matches 1.. run function game:mechanics/dead/shoot_bow

execute if entity @s[tag=playing,team=enemy,advancements={game:dead_player_hit_player=true}] run function game:mechanics/dead/hit_player


##if someone has a revive timer
execute if score @s respawn_timer matches 1.. run function game:mechanics/dead/respawn/main


##Particles
particle cloud ~ ~1.25 ~ 0.05 0.05 0.05 0.05 1


# if they sneak give them glowing
execute if predicate minecraft:sneaking run effect give @s glowing 1 0 true
execute unless predicate minecraft:sneaking run effect clear @s glowing