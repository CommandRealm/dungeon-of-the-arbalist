

##Finding cubes with players in them.
execute if entity @s[team=game] as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s positioned ~-16 ~-16 ~-16 run tag @e[type=marker,tag=zombie_spawnpoint,dx=31,dy=31,dz=31,tag=!boss_room_spawnpoint] add temporary_tag_2

##Making sure that spawn doesn't have a player near it
tag @e[type=marker,tag=temporary_tag_2] add temporary_tag_3
execute as @e[type=marker,tag=temporary_tag_2] at @s if entity @a[team=game,gamemode=adventure,tag=playing,distance=..8.5] run tag @s remove temporary_tag_2
execute unless entity @e[type=marker,tag=temporary_tag_2] run tag @e[type=marker,tag=temporary_tag_3,sort=random,limit=1] add temporary_tag_2

##Getting it down to one
tag @e[type=marker,tag=temporary_tag_2,sort=random,limit=1] add temporary_tag

##Removing tags
tag @e[type=marker,tag=temporary_tag_2] remove temporary_tag_2
tag @e[type=marker,tag=temporary_tag_3] remove temporary_tag_3