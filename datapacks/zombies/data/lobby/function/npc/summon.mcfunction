#https://docs.google.com/spreadsheets/d/1LbDSSARRWGpljnFdkOH7DOwufw04Oa7NXjV8yBUTrvc/

scoreboard objectives add chat_timer dummy {"text":"Lobby NPC Chat Timer","type":"text"}
scoreboard objectives add old_chat_timer dummy {"text":"Lobby NPC Chat Timer Old Values","type":"text"}
scoreboard objectives add pillager_punched minecraft.custom:minecraft.damage_dealt_resisted {"text":"Lobby NPC was punched by player","type":"text"}

#Kill old NPCs
kill @e[tag=lobby_npc]

#region Lobby Area 1 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x-50> <y> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_1"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}

#NPC A (Brutus)
summon minecraft:villager 76 79 106 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;75,79,106],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Brutus"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 26 79 106 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Brutus"}',HandItems:[{id:"minecraft:bow",count:1},{}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC B (Sylvia)
summon minecraft:villager 94 93 130 {Tags:["lobby_npc","lobby_villager","npc_b","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;96,93,132],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Sylvia"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 44 93 130 {Tags:["lobby_npc","lobby_pillager","npc_b","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Sylvia"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC C (Clementine)
summon minecraft:villager 83 96 148 {Tags:["lobby_npc","lobby_villager","npc_c","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;88,97,149],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Clementine"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 33 96 148 {Tags:["lobby_npc","lobby_pillager","npc_c","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Clementine"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC D (Regulus)
summon minecraft:villager 91 81 106 {Tags:["lobby_npc","lobby_villager","npc_d","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;90,81,104],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Regulus"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 41 81 106 {Tags:["lobby_npc","lobby_pillager","npc_d","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Regulus"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC E (Galileo)
summon minecraft:villager 88 84 125 {Tags:["lobby_npc","lobby_villager","npc_e","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;84,84,126],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Galileo"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 38 84 125 {Tags:["lobby_npc","lobby_pillager","npc_e","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Galileo"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC F (Copernicus)
summon minecraft:villager 71 81 139 {Tags:["lobby_npc","lobby_villager","npc_f","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;71,81,141],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Copernicus"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 21 81 139 {Tags:["lobby_npc","lobby_pillager","npc_f","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Copernicus"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC G (Calpurnia)
summon minecraft:villager 86 87 147 {Tags:["lobby_npc","lobby_villager","npc_g","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;86,87,144],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Calpurnia"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 36 87 147 {Tags:["lobby_npc","lobby_pillager","npc_g","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Calpurnia"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC H (Juliet)
summon minecraft:villager 80 82 128 {Tags:["lobby_npc","lobby_villager","npc_h","lobby_area_1"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;82,82,130],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Juliet"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 30 82 128 {Tags:["lobby_npc","lobby_pillager","npc_h","lobby_area_1"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Juliet"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#endregion

#region Lobby Area 2 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x-50> <y> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_2"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Julius)
summon minecraft:villager 66 69 45 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;66,70,43],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Julius"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 11 69 45 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_2"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Julius"}',HandItems:[{id:"minecraft:fishing_rod",count:1},{}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC B (Cynthia)
summon minecraft:villager 74 73 47 {Tags:["lobby_npc","lobby_villager","npc_b","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;74,73,49],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Cynthia"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 24 73 47 {Tags:["lobby_npc","lobby_pillager","npc_b","lobby_area_2"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Cynthia"}',HandItems:[{id:"minecraft:iron_sword",count:1},{}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC C (Saul)
summon minecraft:villager 80 81 45 {Tags:["lobby_npc","lobby_villager","npc_c","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;81,81,44],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Saul"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 30 81 45 {Tags:["lobby_npc","lobby_pillager","npc_c","lobby_area_2"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Saul"}',HandItems:[{id:"minecraft:iron_axe",count:1},{}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#NPC D (Bill)
summon minecraft:villager 85 78 59 {Tags:["lobby_npc","lobby_villager","npc_d","lobby_area_2"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;84,77,54],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Bill"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 35 78 59 {Tags:["lobby_npc","lobby_pillager","npc_d","lobby_area_2"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Bill"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#endregion

#region Lobby Area 3 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_3"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x> <y+50> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_3"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Jack)
summon minecraft:villager 15 25 86 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_3"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;7,31,80],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Jack"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager 15 75 86 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_3"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Jack"}',HandItems:[{},{id:"minecraft:shield",count:1}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#endregion

#region Lobby Area 4 NPCs
#NPC Template
#   summon villager <x> <y> <z> {Tags:["lobby_npc","lobby_villager","npc_<letter>","lobby_area_4"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;x,y,z],dimension:"minecraft:overworld"}}}},ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#   summon pillager <x> <y+50> <z> {Tags:["lobby_npc","lobby_pillager","npc_<letter>","lobby_area_4"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"text":"<name>","color":"gold","bold":true}'}
#NPC A (Cassius)
summon minecraft:villager -27 21 118 {Tags:["lobby_npc","lobby_villager","npc_a","lobby_area_4"],VillagerData:{profession:"librarian"},Brain:{memories:{"minecraft:job_site":{value:{pos:[I;-27,21,121],dimension:"minecraft:overworld"}}}},PersistenceRequired:1b,CustomNameVisible:0b,CustomName:'{"bold":true,"color":"gold","text":"Cassius"}',active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
summon minecraft:pillager -27 71 118 {Tags:["lobby_npc","lobby_pillager","npc_a","lobby_area_4"],PersistenceRequired:1b,CustomNameVisible:1b,CustomName:'{"bold":true,"color":"gold","text":"Cassius"}',HandItems:[{},{id:"minecraft:gold_nugget",count:1}],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:1000000,show_particles:0b}]}
#endregion
return 1