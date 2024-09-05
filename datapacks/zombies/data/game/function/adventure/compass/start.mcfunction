##Called to start the compass raycast.
summon minecraft:area_effect_cloud 0 0 0 {Tags:["temporary_tag"],Duration:1}
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].components."minecraft:lodestone_tracker".target.pos[0]
execute store result entity @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] Pos[0] double 1 run scoreboard players get $calculate calculate
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].components."minecraft:lodestone_tracker".target.pos[1]
execute store result entity @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] Pos[1] double 1 run scoreboard players get $calculate calculate
execute store result score $calculate calculate run data get entity @s Inventory[{Slot:8b}].components."minecraft:lodestone_tracker".target.pos[2]
execute store result entity @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] Pos[2] double 1 run scoreboard players get $calculate calculate

scoreboard players set $calculate calculate 30
execute anchored eyes facing entity @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] feet positioned ^ ^ ^0.5 run function game:adventure/compass/raycast

kill @e[type=minecraft:area_effect_cloud,tag=temporary_tag]
return 1