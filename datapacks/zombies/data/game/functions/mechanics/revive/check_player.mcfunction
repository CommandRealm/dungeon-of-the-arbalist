##Called to make sure our player still exists.

tag @s add temporary_tag

execute as @a[tag=playing,team=fallen] at @s if score @s id = @e[type=area_effect_cloud,tag=temporary_tag,limit=1] id run tag @s add temporary_tag
execute unless entity @a[tag=playing,team=fallen,tag=temporary_tag] run function game:mechanics/revive/player_logged_off

tag @s remove temporary_tag
tag @a remove temporary_tag