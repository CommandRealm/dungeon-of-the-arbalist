##called to summon the armor stand

##killing previous ones
kill @e[type=armor_stand,tag=dungeon_cutscene_camera]

summon armor_stand 1784 59.75 -199 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[0f,0f]}



##clone 
clone 1778 70 -158 1790 80 -154 1778 56 -177

##stopsound
stopsound @a[tag=playing] * ambient.underwater.loop.additions.ultra_rare

##clearing subtitle
title @a[tag=playing] subtitle [{"text":""}]