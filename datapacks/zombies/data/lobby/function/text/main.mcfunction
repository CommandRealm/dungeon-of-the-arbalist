##Called when someone is near a nameplate.
scoreboard players remove @e[type=minecraft:area_effect_cloud,tag=lobby_text] nameplate_delay 1
execute as @e[type=minecraft:area_effect_cloud,tag=lobby_text,scores={nameplate_delay=..0}] at @s run function lobby:text/change_text
return 1