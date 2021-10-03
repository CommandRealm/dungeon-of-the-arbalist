##called to start the raycast
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s anchored eyes run summon area_effect_cloud ^ ^ ^1 {Duration:1000000000,Tags:["die_between_games","stone_monster_laser"]}
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ~ ~ ~ facing entity @e[type=wither_skeleton,tag=boss,limit=1] eyes