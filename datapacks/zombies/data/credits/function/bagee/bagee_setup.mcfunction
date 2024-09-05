scoreboard objectives add bagee_arm dummy
scoreboard players set -1 bagee_arm -1
scoreboard players set -60 bagee_arm -60
kill @e[type=minecraft:armor_stand,tag=bagee]
summon minecraft:armor_stand 30 92 21 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,354.0f],RightLeg:[0.0f,0.0f,3.0f],RightArm:[180.0f,0.0f,330.0f],LeftArm:[0.0f,0.0f,-9.0f]},ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-628232021,1170032373,-1551524281,-996012907],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY3YmRlNTA3MTQ0NDNlNjI5YzgzZDIzOWZmYzQzNzE1NTYzNWFmNWM4NjcxNTQ3NDVmMDM3Mzg0NjQ4NTA1YiJ9fX0="}]}},count:1}],DisabledSlots:4144959,Rotation:[90.0f,0.0f],Tags:["bagee","show_details"],Marker:1b}

return 1