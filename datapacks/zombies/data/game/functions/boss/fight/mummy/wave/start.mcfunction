##Called to start the wave


summon area_effect_cloud 3160 55 246 {Duration:250,Tags:["die_between_games","wave_start_point"],Rotation:[0.0f,0.0f]}
summon area_effect_cloud 3173 55 262 {Duration:250,Tags:["die_between_games","wave_start_point"],Rotation:[90.0f,0.0f]}
summon area_effect_cloud 3160 55 275 {Duration:250,Tags:["die_between_games","wave_start_point"],Rotation:[180.0f,0.0f]}
summon area_effect_cloud 3146 55 261 {Duration:250,Tags:["die_between_games","wave_start_point"],Rotation:[270.0f,0.0f]}

##No ai
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] NoAI set value 1b

scoreboard players set $attack boss 2147483647