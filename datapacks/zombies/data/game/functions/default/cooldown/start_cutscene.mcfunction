##Called to start the end cutscene.
gamemode adventure @a[tag=playing,team=won]
gamemode spectator @a[team=dead]
clear @a[tag=playing]

tp @a[team=dead,tag=playing] 1774 60.5 -184
tp @a[team=won,tag=playing] 1784 56 -171 180 0


kill @e[type=armor_stand,tag=dungeon_cutscene_camera]

summon armor_stand 1774 59.5 -184 {Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b,Tags:["dungeon_cutscene_camera"],Rotation:[-60.0f,15.0f]}