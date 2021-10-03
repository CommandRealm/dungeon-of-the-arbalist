##Called to start the end cutscene.
gamemode spectator @a[tag=playing]
clear @a[tag=playing]

tp @a[team=won,tag=playing] 3160 71 273 180 45
tp @a[team=dead,tag=playing] 3119 90 30 22.5 10


kill @e[type=armor_stand,tag=cpt_cutscene_camera_w]
kill @e[type=armor_stand,tag=cpt_cutscene_camera_l]

summon armor_stand 3160 71 273 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["cpt_cutscene_camera_w"],Rotation:[180f,45f]}
summon armor_stand 3119 90 30 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["cpt_cutscene_camera_l"],Rotation:[22.5f,10f]}