##called to summon the armor stand

##killing previous ones
kill @e[type=minecraft:armor_stand,tag=dungeon_cutscene_camera]

summon minecraft:armor_stand 5000 91 -1 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[0.0f,10.0f]}


##Opening door for cutscene
clone 4993 81 24 4994 85 26 4993 88 22

##Summoning enemy.
summon minecraft:wither_skeleton 5000 90 22 {Tags:["die_between_games","cutscene_entity"],Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:3158064}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:6842472}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;843221916,29705375,-1861374816,442116303],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI1YzkyZDc1YmI3MTAzYmEwNWYyZTJlZWU5NjJhNTc4NWUwNjljN2Q4ZGRkNTI2ZTE5MmMxMjdlZmI3MzNjYyJ9fX0="}]}},count:1}],Silent:1b,Rotation:[0.0f,0.0f],NoAI:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.0d}]}

##stopsound
stopsound @a[tag=playing] * minecraft:music.nether.basalt_deltas

##clearing subtitle
title @a[tag=playing] subtitle [{"text":"","type":"text"}]

return 1