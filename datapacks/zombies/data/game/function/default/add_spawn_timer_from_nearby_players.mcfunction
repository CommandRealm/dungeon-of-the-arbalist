##Called to add our spawn timer to be longer based on the amount of players in our cube.



execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 as @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing,sort=arbitrary,limit=5,team=game] at @s run scoreboard players add $calculate calculate 50

##removing 20 so that we don't count
execute at @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 if entity @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing,sort=arbitrary,limit=5,team=game] run scoreboard players remove $calculate calculate 50

return 1