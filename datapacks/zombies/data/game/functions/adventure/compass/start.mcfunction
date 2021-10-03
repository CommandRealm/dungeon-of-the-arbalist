##Called to start the compass raycast.
summon area_effect_cloud 0 0 0 {Tags:["temporary_tag"],Duration:1}
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].tag.LodestonePos.X
execute store result entity @e[type=area_effect_cloud,tag=temporary_tag,limit=1] Pos[0] double 1 run scoreboard players get $calculate calculate
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].tag.LodestonePos.Y
execute store result entity @e[type=area_effect_cloud,tag=temporary_tag,limit=1] Pos[1] double 1 run scoreboard players get $calculate calculate
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].tag.LodestonePos.Z
execute store result entity @e[type=area_effect_cloud,tag=temporary_tag,limit=1] Pos[2] double 1 run scoreboard players get $calculate calculate

scoreboard players set $calculate calculate 30
execute anchored eyes facing entity @e[type=area_effect_cloud,tag=temporary_tag,limit=1] feet positioned ^ ^ ^0.5 run function game:adventure/compass/raycast

kill @e[type=area_effect_cloud,tag=temporary_tag]