# called by a plagued room

# particles
particle sneeze ~ ~ ~ 9 9 9 0.15 100

# tagging players
execute positioned ~-16 ~-15 ~-16 run tag @a[tag=playing,gamemode=adventure,dx=31,dy=31,dz=31] add in_plagued_room
execute positioned ~-18 ~-15 ~-18 as @a[tag=playing,gamemode=adventure,dx=35,dy=31,dz=35] at @s if entity @e[type=marker,tag=doorway,distance=..6] run tag @s add in_plagued_room
title @a[tag=in_plagued_room,tag=playing,tag=!has_gas_mask] title [{"text":" "}]
title @a[tag=in_plagued_room,tag=playing,tag=!has_gas_mask] subtitle ["",{"text":"[","color":"dark_red","bold":true},{"text":"!","color":"red","bold":false},{"text":"]","color":"dark_red","bold":true},{"text":" - ","color":"dark_gray"},{"text":"Exit the room","color":"gold"},{"text":"!","color":"red"}]

# damage
effect give @a[tag=in_plagued_room,tag=playing,tag=!has_gas_mask] wither 1 2 false

# advancement
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[tag=in_plagued_room,tag=playing,team=game,tag=has_gas_mask] only advancements:volition/item-gas

# timer
scoreboard players remove @e[type=area_effect_cloud,tag=generation_marker,tag=plagued_room] attack 1

execute as @e[type=area_effect_cloud,tag=generation_marker,tag=plagued_room,scores={attack=..0}] at @s run tag @s remove plagued_room



# tagging current plagues so that they dont immediately plague it again
execute positioned ~-16 ~-15 ~-16 run scoreboard players set @e[type=wither_skeleton,tag=plague_zombie,dx=31,dy=31,dz=31,scores={attack=1..}] attack 400

# scheduling to remove tag
schedule function game:enemy/volition/plague/remove_tag 2t