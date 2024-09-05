##Called to start the end cutscene.
gamemode spectator @a[tag=playing]
clear @a[tag=playing]

tp @a[tag=playing,team=dead] 5000 95 -1 0 22.5
tp @a[tag=playing,team=won] 4984 92.75 75 0 90


kill @e[type=minecraft:armor_stand,tag=pug_cutscene_camera_w]
kill @e[type=minecraft:armor_stand,tag=pug_cutscene_camera_l]

summon minecraft:armor_stand 5000 95 -1 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["pug_cutscene_camera_l"],Rotation:[0.0f,22.5f]}
summon minecraft:armor_stand 4984 92.75 75 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["pug_cutscene_camera_w"],Rotation:[0.0f,90.0f]}
return 1