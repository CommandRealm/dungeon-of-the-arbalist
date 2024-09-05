##Called to disable the naemplate
data modify entity @s CustomNameVisible set value 0b
data modify entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=upper_door_text,sort=nearest,limit=1] CustomNameVisible set value 0b
data modify entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=lower_door_text,sort=nearest,limit=1] CustomNameVisible set value 0b

tag @s remove door_nameplate_enabled
tag @e[type=minecraft:area_effect_cloud,distance=..1,tag=upper_door_text,sort=nearest,limit=1] remove door_nameplate_enabled
tag @e[type=minecraft:area_effect_cloud,distance=..1,tag=lower_door_text,sort=nearest,limit=1] remove door_nameplate_enabled
return 1