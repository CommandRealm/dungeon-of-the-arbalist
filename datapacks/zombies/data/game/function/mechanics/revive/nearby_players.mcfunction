##called when there are nearby players to the revive spot.

##facing command
execute as @e[type=minecraft:armor_stand,tag=revive_point] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,tag=playing,team=game]

##calling revive in progress
execute as @a[gamemode=adventure,tag=playing,team=game] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=revive_aec] run function game:mechanics/revive/in_progress

##seeing if we need to update the revive point name text.
execute as @e[type=minecraft:area_effect_cloud,tag=revive_aec] at @s run scoreboard players operation @s calculate = @s revive_compare
execute as @e[type=minecraft:area_effect_cloud,tag=revive_aec] at @s run scoreboard players operation @s calculate -= @s revive_progress
execute as @e[type=minecraft:area_effect_cloud,tag=revive_aec] at @s if score @s calculate >= $40 number run function game:mechanics/revive/update_revive_progress
execute as @e[type=minecraft:area_effect_cloud,tag=revive_aec] at @s if score @s calculate <= $-40 number run function game:mechanics/revive/update_revive_progress

##sound timer
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=revive_aec] sound 1
execute as @e[type=minecraft:area_effect_cloud,tag=revive_aec,scores={sound=2..}] at @s run function game:mechanics/revive/play_sound
return 1