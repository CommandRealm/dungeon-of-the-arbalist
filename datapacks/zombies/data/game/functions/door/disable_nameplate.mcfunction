##Called to disable the naemplate
data modify entity @s CustomNameVisible set value 0b
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=upper_door_text,distance=..1] CustomNameVisible set value 0b
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=lower_door_text,distance=..1] CustomNameVisible set value 0b

tag @s remove door_nameplate_enabled
tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=upper_door_text,distance=..1] remove door_nameplate_enabled
tag @e[type=area_effect_cloud,limit=1,sort=nearest,tag=lower_door_text,distance=..1] remove door_nameplate_enabled