tp @s ^ ^ ^.5 facing 3089 91 151
particle witch ~ ~-1 ~ .1 .1 .1 .1 3 force
execute if entity @s[x=3089,z=151,dx=1,dz=1] run tag @s remove cpt_king_phase1
execute if entity @s[x=3089,z=151,dx=1,dz=1] run tag @s remove cpt_king_flee
execute if entity @s[x=3089,z=151,dx=1,dz=1] run tag @s add cpt_king_waiting
execute if entity @s[x=3089,z=151,dx=1,dz=1] run data merge entity @s {Invulnerable:0b}
execute if entity @s[x=3089,z=151,dx=1,dz=1] run tp @s ~ 106 ~