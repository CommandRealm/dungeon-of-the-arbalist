##Called to check if we should be active
execute as @a[gamemode=adventure,distance=..7.5,tag=playing] at @s run tag @e[type=minecraft:area_effect_cloud,tag=upgrade_text,sort=nearest,limit=1] add temporary_tag
execute if entity @s[tag=!temporary_tag] run function game:mechanics/upgrade/disable_nameplate
tag @s remove temporary_tag
return 1