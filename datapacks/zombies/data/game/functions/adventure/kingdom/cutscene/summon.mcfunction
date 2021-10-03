##called to summon the armor stand

##killing previous ones
kill @e[type=armor_stand,tag=dungeon_cutscene_camera]
kill @e[type=armor_stand,tag=cpt_cutscene_camera_w]
kill @e[type=armor_stand,tag=cpt_cutscene_camera_l]

summon armor_stand 3173 107 234 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[0f,25f]}


##Summoning teacher
summon pillager 3173 105 238 {Tags:["die_between_games","cutscene_entity"],Invulnerable:1b,PersistenceRequired:1b,Rotation:[180f,0f],HandItems:[{id:"minecraft:stick",Count:1b},{id:"minecraft:arrow",Count:1b}],NoAI:1b,Silent:1b}

##stopsound
stopsound @a[tag=playing] * music.nether.nether_wastes

##clearing subtitle
title @a[tag=playing] subtitle [{"text":""}]

tag @a[tag=playing] add needs_spectator_fix