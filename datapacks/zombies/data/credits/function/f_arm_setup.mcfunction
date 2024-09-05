kill @e[tag=pl]
summon minecraft:armor_stand 23 92 15 {Tags:["credits","pl","show_details"],NoBasePlate:1b,ShowArms:1b,Rotation:[0.0f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-2106543387,289032106,-1264165172,-741021029],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIyOWE0NTc4ZjZmY2RjN2RjMGM0ZTc3NmMyOTMxMjJkODFkZGI2NTE4Y2NlZTUyOTAxN2UyNDZjMDI0YjY3YyJ9fX0="}]}},count:1}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
scoreboard objectives add pl dummy
scoreboard objectives add pl2 dummy
scoreboard objectives add pld dummy
scoreboard objectives add pld2 dummy
scoreboard players set $direction pld 1
data merge entity @e[tag=pl,limit=1] {Pose:{RightArm:[-120.0f,40.0f,55.0f],LeftArm:[-70.0f,-50.0f,0.0f]}}
##R -120, 40, x L x, -50, 0
item replace entity @e[tag=pl] armor.feet with minecraft:leather_boots[minecraft:dyed_color={rgb:13882323}]
item replace entity @e[tag=pl] armor.chest with minecraft:leather_chestplate[minecraft:dyed_color={rgb:6250335}]
item replace entity @e[tag=pl] armor.legs with minecraft:leather_leggings[minecraft:dyed_color={rgb:65301}]

return 1