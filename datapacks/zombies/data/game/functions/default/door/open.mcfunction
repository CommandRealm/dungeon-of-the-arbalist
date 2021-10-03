##Called to open the door.

##Removing raycast
tag @s remove raycast

##killing purchase texts
kill @e[type=area_effect_cloud,distance=..10,tag=door_text]
kill @e[type=armor_stand,distance=..10,tag=armor_stand_door_text_marker]

##Seeing if this room has been opened before.
execute facing entity @p[tag=playing,gamemode=adventure,tag=temporary_tag] feet rotated ~180 ~ positioned ^ ^ ^16 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s if entity @s[tag=!opened] run function game:default/door/check_newly_opened_room

##death timer
scoreboard players set @s death_timer 30
tag @s add on_death_timer