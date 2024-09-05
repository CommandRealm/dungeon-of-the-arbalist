tag @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,sort=nearest,limit=1] add temporary_chat_tag
execute if entity @e[type=minecraft:pillager,distance=..10,tag=lobby_npc,tag=lobby_pillager,tag=temporary_chat_tag,sort=nearest,limit=1] run function lobby:npc/random_shout
tag @e[type=minecraft:pillager] remove temporary_chat_tag
scoreboard players set @s chat_timer 0
return 1