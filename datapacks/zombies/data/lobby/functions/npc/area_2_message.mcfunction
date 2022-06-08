#NPC A (Julius)
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_a,tag=temporary_chat_tag] if score @s chat_timer matches 0 run data modify storage lobby:npc random_shout set value "Welcome aboard!"
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_a,tag=temporary_chat_tag] if score @s chat_timer matches 1 run data modify storage lobby:npc random_shout set value "Catch anything today?"
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_a,tag=temporary_chat_tag] if score @s chat_timer matches 2 run data modify storage lobby:npc random_shout set value "Make sure you're using the right bait. Squids aren't gonna eat worms."
#NPC B (Cynthia)
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_b,tag=temporary_chat_tag] if score @s chat_timer matches 0 run data modify storage lobby:npc random_shout set value "My husband is always out fishing..."
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_b,tag=temporary_chat_tag] if score @s chat_timer matches 1 run data modify storage lobby:npc random_shout set value "Julius caught a big fish today, should make for a delicious meal."
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_b,tag=temporary_chat_tag] if score @s chat_timer matches 2 run data modify storage lobby:npc random_shout set value "I hope Julius takes his nap. He gets a little salty when he's tired."
#NPC C (Saul)
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_c,tag=temporary_chat_tag] if score @s chat_timer matches 0 run data modify storage lobby:npc random_shout set value "Aha! There you are!"
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_c,tag=temporary_chat_tag] if score @s chat_timer matches 1 run data modify storage lobby:npc random_shout set value "Heyyy! My best buddy, how've you been?!"
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_c,tag=temporary_chat_tag] if score @s chat_timer matches 2 run data modify storage lobby:npc random_shout set value "I cut some fresh porkchops today! Want some?"
#NPC D (Bill)
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_d,tag=temporary_chat_tag] if score @s chat_timer matches 0 run data modify storage lobby:npc random_shout set value "Hi there."
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_d,tag=temporary_chat_tag] if score @s chat_timer matches 1 run data modify storage lobby:npc random_shout set value "You're new here, aren't ya?"
    execute if entity @e[type=pillager,tag=lobby_npc,tag=lobby_pillager,distance=..10,sort=nearest,limit=1,tag=npc_d,tag=temporary_chat_tag] if score @s chat_timer matches 2 run data modify storage lobby:npc random_shout set value "Have you heard about the Dungeon?"