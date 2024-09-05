##called to summon the armor stand

##killing previous ones
kill @e[type=minecraft:armor_stand,tag=dungeon_cutscene_camera]
kill @e[type=minecraft:armor_stand,tag=cpt_cutscene_camera_w]
kill @e[type=minecraft:armor_stand,tag=cpt_cutscene_camera_l]

summon minecraft:armor_stand 3173 107 234 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[0.0f,25.0f]}


##Summoning teacher
summon minecraft:pillager 3173 105 238 {Tags:["die_between_games","cutscene_entity"],Invulnerable:1b,PersistenceRequired:1b,Rotation:[180.0f,0.0f],HandItems:[{id:"minecraft:stick",count:1},{id:"minecraft:arrow",count:1}],NoAI:1b,Silent:1b}

##stopsound
stopsound @a[tag=playing] * minecraft:music.nether.nether_wastes

##clearing subtitle
title @a[tag=playing] subtitle [{"text":"","type":"text"}]

tag @a[tag=playing] add needs_spectator_fix
return 1