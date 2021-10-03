##Called to see if any of the nearby used aec's are ours.
##tag
tag @s add temporary_tag

execute as @e[type=area_effect_cloud,tag=used_upgrade,distance=..7] at @s if score @s id = @p[tag=temporary_tag] id run scoreboard players set @p[tag=temporary_tag] possible_upgrade -101

##tag would be removed here but it gets removed later.
