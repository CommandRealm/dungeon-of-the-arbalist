##Called to add our spawn timer to be longer based on the amount of players in our cube.



execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 as @a[tag=playing,gamemode=adventure,team=game,dx=31,dy=31,dz=31,limit=5,sort=arbitrary] at @s run scoreboard players add $calculate calculate 50

##removing 20 so that we don't count
execute at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 if entity @a[tag=playing,gamemode=adventure,team=game,dx=31,dy=31,dz=31,limit=5,sort=arbitrary] run scoreboard players remove $calculate calculate 50
