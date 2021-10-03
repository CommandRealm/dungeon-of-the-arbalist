##called to give us a view of the 5x5 map.



##finding our coordinates

tag @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] add temporary_tag
execute as @e[type=area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '[{"text":"▓","color":"#88cb8e","strikethrough":true}]'

tag @e[type=area_effect_cloud,tag=temporary_tag] remove temporary_tag

function game:shops/items/map/identify/mapping_1












##Message

tellraw @s [{"text":"                                "},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-2,grid_z=-2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-1,grid_z=-2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=0,grid_z=-2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=1,grid_z=-2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=2,grid_z=-2},limit=1]"}]
tellraw @s [{"text":"                                "},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-2,grid_z=-1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-1,grid_z=-1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=0,grid_z=-1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=1,grid_z=-1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=2,grid_z=-1},limit=1]"}]
tellraw @s [{"text":"                                "},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-2,grid_z=0},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-1,grid_z=0},limit=1]"},{"text":"█","obfuscated":true,"color":"#ab0909","strikethrough": true},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=1,grid_z=0},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=2,grid_z=0},limit=1]"}]
tellraw @s [{"text":"                                "},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-2,grid_z=1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-1,grid_z=1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=0,grid_z=1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=1,grid_z=1},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=2,grid_z=1},limit=1]"}]
tellraw @s [{"text":"                                "},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-2,grid_z=2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=-1,grid_z=2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=0,grid_z=2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=1,grid_z=2},limit=1]"},{"interpret":true,"nbt":"CustomName","entity":"@e[type=area_effect_cloud,tag=mapping_marker,scores={grid_x=2,grid_z=2},limit=1]"}]



