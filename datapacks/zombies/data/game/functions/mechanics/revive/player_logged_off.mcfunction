##Called when a player logs off.
execute positioned ~ ~2.0 ~ run kill @e[type=area_effect_cloud,tag=revive_name_text,sort=nearest,limit=1]
execute positioned ~ ~1.75 ~ run kill @e[type=area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1]
execute positioned ~ ~1.5 ~ run kill @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1]
kill @e[type=armor_stand,tag=revive_point,sort=nearest,limit=1]
kill @s