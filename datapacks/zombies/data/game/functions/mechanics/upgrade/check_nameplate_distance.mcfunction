##Called to check if we should be active
execute as @a[tag=playing,gamemode=adventure,distance=..7.5] at @s run tag @e[sort=nearest,limit=1,type=area_effect_cloud,tag=upgrade_text] add temporary_tag
execute if entity @s[tag=!temporary_tag] run function game:mechanics/upgrade/disable_nameplate
tag @s remove temporary_tag