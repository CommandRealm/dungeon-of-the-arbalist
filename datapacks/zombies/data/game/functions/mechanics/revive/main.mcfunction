##Called when there is a revive point.

execute as @a[gamemode=spectator,team=fallen] at @s unless entity @e[type=armor_stand,tag=revive_point,distance=..3.5] run function game:mechanics/revive/teleport_to_armor_stand

execute as @e[type=armor_stand,tag=revive_aec] at @s run function game:mechanics/revive/check_player
tag @e[type=area_effect_cloud,tag=revive_aec] remove has_nearby_player
execute as @e[type=area_effect_cloud,tag=revive_aec] at @s if entity @a[tag=playing,team=game,gamemode=adventure,distance=..25] run tag @s add has_nearby_player
execute if entity @e[type=area_effect_cloud,tag=revive_aec,tag=has_nearby_player] run function game:mechanics/revive/nearby_players

##Timer

execute as @e[type=area_effect_cloud,tag=revive_aec,scores={revive_time=1..}] at @s unless entity @a[tag=playing,team=game,gamemode=adventure,distance=..5] run scoreboard players remove @s revive_time 1
execute as @e[type=area_effect_cloud,tag=revive_aec,scores={revive_time=0}] at @s run function game:mechanics/revive/check_end_revive_point

scoreboard players remove @e[type=area_effect_cloud,tag=revive_aec] revive_second 1
execute as @e[type=area_effect_cloud,tag=revive_aec,scores={revive_second=0}] at @s run function game:mechanics/revive/update_timer_text

