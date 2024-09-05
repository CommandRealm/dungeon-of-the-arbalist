particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 0 force
clone 2993 2 117 3005 41 130 3083 51 141
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 0.67
tag @s remove cpt_king_fall
attribute @s minecraft:generic.follow_range base set 1024
attribute @s minecraft:generic.movement_speed base set 0.325
attribute @s minecraft:generic.attack_damage base set 2.5
function game:adventure/kingdom/new_area/area_10
return 1