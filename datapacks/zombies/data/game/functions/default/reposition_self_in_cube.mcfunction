# called to reposition ourselves in our new cube
tp @s @r[tag=playing,x=2000,y=0,z=0,distance=35..,tag=!solo_spawning]


execute at @s at @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] positioned ~-16 ~-16 ~-16 at @e[type=marker,tag=zombie_spawnpoint,sort=random,limit=1,dx=31,dy=31,dz=31] run tp @s ~ ~ ~ facing 2000 ~ 0
execute at @s run tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=selected_spawnpoint,sort=nearest,limit=1]
execute at @s run tp @s ~ ~ ~ ~ 10