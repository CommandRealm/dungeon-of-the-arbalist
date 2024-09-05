

##Finding cubes with players in them.
execute if entity @s[team=game] as @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s positioned ~-16 ~-16 ~-16 run tag @e[type=minecraft:marker,dx=31,dy=31,dz=31,tag=zombie_spawnpoint,tag=!boss_room_spawnpoint] add temporary_tag_2

##Making sure that spawn doesn't have a player near it
tag @e[type=minecraft:marker,tag=temporary_tag_2] add temporary_tag_3
execute as @e[type=minecraft:marker,tag=temporary_tag_2] at @s if entity @a[gamemode=adventure,distance=..8.5,tag=playing,team=game] run tag @s remove temporary_tag_2
execute unless entity @e[type=minecraft:marker,tag=temporary_tag_2] run tag @e[type=minecraft:marker,tag=temporary_tag_3,sort=random,limit=1] add temporary_tag_2

##Getting it down to one
tag @e[type=minecraft:marker,tag=temporary_tag_2,sort=random,limit=1] add temporary_tag

##Removing tags
tag @e[type=minecraft:marker,tag=temporary_tag_2] remove temporary_tag_2
tag @e[type=minecraft:marker,tag=temporary_tag_3] remove temporary_tag_3
return 1