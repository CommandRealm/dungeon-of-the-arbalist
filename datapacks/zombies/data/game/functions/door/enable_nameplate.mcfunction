##Called to enable the nameplate
data modify entity @s CustomNameVisible set value 1b
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=upper_door_text,distance=..1] CustomNameVisible set value 1b
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=lower_door_text,distance=..1] CustomNameVisible set value 1b

tag @s add door_nameplate_enabled
tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=upper_door_text,distance=..1] add door_nameplate_enabled
tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=lower_door_text,distance=..1] add door_nameplate_enabled

