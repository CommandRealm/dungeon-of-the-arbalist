tag @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1] add temporary_chat_tag
execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=temporary_chat_tag] run function lobby:npc/random_shout
tag @e[type=pillager] remove temporary_chat_tag
scoreboard players set @s chat_timer 0