# called to activate the damage point

tag @s add activated_damage_point
tag @a[gamemode=spectator,dx=0] add temp
particle minecraft:block_marker soul_fire ~ ~.3 ~ 0.15 0.15 0.15 0.05 3 force @a[tag=temp]
tag @a[gamemode=spectator,dx=0,tag=temp] remove temp