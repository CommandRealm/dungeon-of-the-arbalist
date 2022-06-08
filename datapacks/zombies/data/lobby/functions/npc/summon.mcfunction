#https://docs.google.com/spreadsheets/d/1LbDSSARRWGpljnFdkOH7DOwufw04Oa7NXjV8yBUTrvc/

scoreboard objectives add chat_timer dummy {"text":"Lobby NPC Chat Timer"}
scoreboard objectives add old_chat_timer dummy {"text":"Lobby NPC Chat Timer Old Values"}
scoreboard objectives add pillager_punched minecraft.custom:minecraft.damage_dealt_resisted {"text":"Lobby NPC was punched by player"}

#Kill old NPCs
kill @e[tag=lobby_npc]

#region Lobby Area 1 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x-50> <y> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}

#NPC A (Brutus)
    summon villager 76 79 106 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;75,79,106],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Brutus","color":"gold","bold":true}'}
    summon pillager 26 79 106 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Brutus","color":"gold","bold":true}',HandItems:[{id:"minecraft:bow",Count:1b},{}]}
#NPC B (Sylvia)
   summon villager 94 93 130 {Tags:["lobby_npc","lobby_villager","npc_b","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;96,93,132],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Sylvia","color":"gold","bold":true}'}
   summon pillager 44 93 130 {Tags:["lobby_npc","lobby_pillager","npc_b","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Sylvia","color":"gold","bold":true}'}
#NPC C (Clementine)
   summon villager 83 96 148 {Tags:["lobby_npc","lobby_villager","npc_c","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;88,97,149],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Clementine","color":"gold","bold":true}'}
   summon pillager 33 96 148 {Tags:["lobby_npc","lobby_pillager","npc_c","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Clementine","color":"gold","bold":true}'}
#NPC D (Regulus)
   summon villager 91 81 106 {Tags:["lobby_npc","lobby_villager","npc_d","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;90,81,104],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Regulus","color":"gold","bold":true}'}
   summon pillager 41 81 106 {Tags:["lobby_npc","lobby_pillager","npc_d","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Regulus","color":"gold","bold":true}'}
#NPC E (Galileo)
   summon villager 88 84 125 {Tags:["lobby_npc","lobby_villager","npc_e","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;84,84,126],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Galileo","color":"gold","bold":true}'}
   summon pillager 38 84 125 {Tags:["lobby_npc","lobby_pillager","npc_e","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Galileo","color":"gold","bold":true}'}
#NPC F (Copernicus)
   summon villager 71 81 139 {Tags:["lobby_npc","lobby_villager","npc_f","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;71,81,141],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Copernicus","color":"gold","bold":true}'}
   summon pillager 21 81 139 {Tags:["lobby_npc","lobby_pillager","npc_f","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Copernicus","color":"gold","bold":true}'}
#NPC G (Calpurnia)
   summon villager 86 87 147 {Tags:["lobby_npc","lobby_villager","npc_g","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;86,87,144],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Calpurnia","color":"gold","bold":true}'}
   summon pillager 36 87 147 {Tags:["lobby_npc","lobby_pillager","npc_g","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Calpurnia","color":"gold","bold":true}'}
#NPC H (Juliet)
   summon villager 80 82 128 {Tags:["lobby_npc","lobby_villager","npc_h","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;82,82,130],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Juliet","color":"gold","bold":true}'}
   summon pillager 30 82 128 {Tags:["lobby_npc","lobby_pillager","npc_h","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Juliet","color":"gold","bold":true}'}
#endregion

#region Lobby Area 2 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x-50> <y> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Julius)
   summon villager 66 69 45 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;66,70,43],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Julius","color":"gold","bold":true}'}
   summon pillager 11 69 45 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Julius","color":"gold","bold":true}',HandItems:[{id:"minecraft:fishing_rod",Count:1b},{}]}
#NPC B (Cynthia)
   summon villager 74 73 47 {Tags:["lobby_npc","lobby_villager","npc_b","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;74,73,49],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Cynthia","color":"gold","bold":true}'}
   summon pillager 24 73 47 {Tags:["lobby_npc","lobby_pillager","npc_b","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Cynthia","color":"gold","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}
#NPC C (Saul)
   summon villager 80 81 45 {Tags:["lobby_npc","lobby_villager","npc_c","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;81,81,44],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Saul","color":"gold","bold":true}'}
   summon pillager 30 81 45 {Tags:["lobby_npc","lobby_pillager","npc_c","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Saul","color":"gold","bold":true}',HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
#NPC D (Bill)
   summon villager 85 78 59 {Tags:["lobby_npc","lobby_villager","npc_d","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;84,77,54],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Bill","color":"gold","bold":true}'}
   summon pillager 35 78 59 {Tags:["lobby_npc","lobby_pillager","npc_d","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Bill","color":"gold","bold":true}'}
#endregion

#region Lobby Area 3 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_3"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x> <y+50> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_3"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Jack)
   summon villager 15 25 86 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_3"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;7,31,80],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Jack","color":"gold","bold":true}'}
   summon pillager 15 75 86 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_3"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Jack","color":"gold","bold":true}',HandItems:[{},{id:"minecraft:shield",Count:1b}]}
#endregion

#region Lobby Area 4 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_4"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x> <y+50> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_4"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Cassius)
   summon villager -27 21 118 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_4"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;-27,21,121],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"Cassius","color":"gold","bold":true}'}
   summon pillager -27 71 118 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_4"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"Cassius","color":"gold","bold":true}',HandItems:[{},{id:"minecraft:gold_nugget",Count:1b}]}
#endregion