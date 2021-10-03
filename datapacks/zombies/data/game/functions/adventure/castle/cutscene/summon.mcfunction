##called to summon the armor stand

##killing previous ones
kill @e[type=armor_stand,tag=dungeon_cutscene_camera]

summon armor_stand 5000 91 -1 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[0f,10f]}


##Opening door for cutscene
clone 4993 81 24 4994 85 26 4993 88 22

##Summoning enemy.
summon wither_skeleton 5000 90 22 {Tags:["die_between_games","cutscene_entity"],Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3158064}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6842472}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;843221916,29705375,-1861374816,442116303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI1YzkyZDc1YmI3MTAzYmEwNWYyZTJlZWU5NjJhNTc4NWUwNjljN2Q4ZGRkNTI2ZTE5MmMxMjdlZmI3MzNjYyJ9fX0="}]}}}}],Silent:1b,Rotation:[0f,0f],Attributes:[{Name:"generic.movement_speed",Base:0.0}],NoAI:1b}

##stopsound
stopsound @a[tag=playing] * music.nether.basalt_deltas

##clearing subtitle
title @a[tag=playing] subtitle [{"text":""}]
