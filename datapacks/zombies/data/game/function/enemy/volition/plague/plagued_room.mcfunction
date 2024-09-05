# called by a plagued room

# particles
particle minecraft:sneeze ~ ~ ~ 9 9 9 0.15 100

# tagging players
execute positioned ~-16 ~-15 ~-16 run tag @a[gamemode=adventure,dx=31,dy=31,dz=31,tag=playing] add in_plagued_room
execute positioned ~-18 ~-15 ~-18 as @a[gamemode=adventure,dx=35,dy=31,dz=35,tag=playing] at @s if entity @e[type=minecraft:marker,distance=..6,tag=doorway] run tag @s add in_plagued_room
title @a[tag=in_plagued_room,tag=playing] title [{"text":" ","type":"text"}]
title @a[tag=in_plagued_room,tag=playing] subtitle ["",{"text":"[","color":"dark_red","bold":true,"type":"text"},{"text":"!","color":"red","bold":false,"type":"text"},{"text":"]","color":"dark_red","bold":true,"type":"text"},{"text":" - ","color":"dark_gray","type":"text"},{"text":"Exit the room","color":"gold","type":"text"},{"text":"!","color":"red","type":"text"}]

# damage
effect give @a[tag=in_plagued_room,tag=playing] minecraft:wither 1 2 false


# timer
scoreboard players remove @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=plagued_room] attack 1

execute as @e[type=minecraft:area_effect_cloud,tag=generation_marker,tag=plagued_room,scores={attack=..0}] at @s run tag @s remove plagued_room



# tagging current plagues so that they dont immediately plague it again
execute positioned ~-16 ~-15 ~-16 run scoreboard players set @e[type=minecraft:wither_skeleton,dx=31,dy=31,dz=31,tag=plague_zombie,scores={attack=1..}] attack 400

# scheduling to remove tag
schedule function game:enemy/volition/plague/remove_tag 2t
return 1