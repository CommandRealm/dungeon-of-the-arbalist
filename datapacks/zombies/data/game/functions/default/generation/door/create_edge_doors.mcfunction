# called to create edge doors
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s positioned ~ 62 ~-19 if block ~ ~ ~ minecraft:polished_andesite run summon marker ~ ~ ~ {Tags:["doorway","edge_doorway","die_between_games"]}
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s positioned ~-19 62 ~ if block ~ ~ ~ minecraft:polished_andesite run summon marker ~ ~ ~ {Tags:["doorway","edge_doorway","die_between_games"]}
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s positioned ~ 62 ~18 if block ~ ~ ~ minecraft:polished_andesite run summon marker ~ ~ ~ {Tags:["doorway","edge_doorway","die_between_games"]}
execute as @e[type=area_effect_cloud,tag=generation_marker,tag=!base_generation_marker] at @s positioned ~18 62 ~ if block ~ ~ ~ minecraft:polished_andesite run summon marker ~ ~ ~ {Tags:["doorway","edge_doorway","die_between_games"]}
