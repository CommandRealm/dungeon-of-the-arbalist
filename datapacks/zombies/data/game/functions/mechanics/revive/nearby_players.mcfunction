##called when there are nearby players to the revive spot.

##facing command
execute as @e[type=armor_stand,tag=revive_point] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game,gamemode=adventure]

##calling revive in progress
execute as @a[tag=playing,team=game,gamemode=adventure] at @s if entity @e[type=area_effect_cloud,tag=revive_aec,distance=..5] run function game:mechanics/revive/in_progress

##seeing if we need to update the revive point name text.
execute as @e[type=area_effect_cloud,tag=revive_aec] at @s run scoreboard players operation @s calculate = @s revive_compare
execute as @e[type=area_effect_cloud,tag=revive_aec] at @s run scoreboard players operation @s calculate -= @s revive_progress
execute as @e[type=area_effect_cloud,tag=revive_aec] at @s if score @s calculate >= $40 number run function game:mechanics/revive/update_revive_progress
execute as @e[type=area_effect_cloud,tag=revive_aec] at @s if score @s calculate <= $-40 number run function game:mechanics/revive/update_revive_progress

##sound timer
scoreboard players add @e[type=area_effect_cloud,tag=revive_aec] sound 1
execute as @e[type=area_effect_cloud,tag=revive_aec,scores={sound=2..}] at @s run function game:mechanics/revive/play_sound