# called to plague the room


scoreboard players set @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] attack 400
tag @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] add plagued_room
return 1