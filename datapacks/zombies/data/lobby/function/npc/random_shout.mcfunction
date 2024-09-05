#Random number for message
scoreboard players set $mod chat_timer 3
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["random_shout"],Age:1}
execute store result score @s chat_timer run data get entity @e[type=minecraft:area_effect_cloud,tag=random_shout,limit=1] UUID[0] 1
scoreboard players operation @s chat_timer %= $mod chat_timer
execute if score @s chat_timer = @s old_chat_timer run scoreboard players add @s chat_timer 1
execute if score @s chat_timer matches 3.. run scoreboard players set @s chat_timer 0
kill @e[type=minecraft:area_effect_cloud,tag=random_shout]

#Play talking sound
playsound minecraft:entity.pillager.ambient master @s ~ ~ ~ 10 1.1

#Assign shout message to storage depending on area
execute if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=lobby_area_1,tag=temporary_chat_tag,sort=nearest,limit=1] run function lobby:npc/area_1_message
execute if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=lobby_area_2,tag=temporary_chat_tag,sort=nearest,limit=1] run function lobby:npc/area_2_message
execute if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=lobby_area_3,tag=temporary_chat_tag,sort=nearest,limit=1] run function lobby:npc/area_3_message
execute if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=lobby_area_4,tag=temporary_chat_tag,sort=nearest,limit=1] run function lobby:npc/area_4_message

scoreboard players operation @s old_chat_timer = @s chat_timer

##advancement
execute unless score $difficulty settings matches -1 if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=temporary_chat_tag] run advancement grant @s only advancements:lobby-talk

#Say message
tellraw @s [{"text":"<","color":"gray","type":"text"},{"selector":"@e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=temporary_chat_tag,sort=nearest,limit=1]","color":"gold","bold":true,"type":"selector"},{"text":"> ","color":"gray","type":"text"},{"nbt":"random_shout","storage":"lobby:npc","color":"white","source":"storage","type":"nbt"}]
return 1