##Called to start the end cutscene.
gamemode spectator @a[tag=playing]
clear @a[tag=playing]

tp @a[team=dead,tag=playing] 5000 95 -1 0 22.5
tp @a[team=won,tag=playing] 4984 92.75 75 0 90


kill @e[type=armor_stand,tag=pug_cutscene_camera_w]
kill @e[type=armor_stand,tag=pug_cutscene_camera_l]

summon armor_stand 5000 95 -1 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["pug_cutscene_camera_l"],Rotation:[0.0f,22.5f]}
summon armor_stand 4984 92.75 75 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["pug_cutscene_camera_w"],Rotation:[0.0f,90.0f]}