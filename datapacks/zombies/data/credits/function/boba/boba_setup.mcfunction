scoreboard objectives add boba_arms dummy
scoreboard players set 69 boba_arms 69
scoreboard players set -1 boba_arms -1
scoreboard players set 130 boba_arms 130

kill @e[type=minecraft:armor_stand,tag=boba]
summon minecraft:armor_stand 19 92 17 {Tags:["show_details","boba"],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Rotation:[-45.0f],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:6908265}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:1863171}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-716858369,-111326720,-1210998732,201870538],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM4ZjUwYWEyMWYzMDcyYzljODJiNGJhODFiN2I2N2FlZjNlN2MwMWY2ZDliYTg3ZTZhZDY4NzYxN2M0ZDc2NiJ9fX0="}]}},count:1}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[350.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,-4.0f],RightLeg:[0.0f,0.0f,4.0f],RightArm:[0.0f,0.0f,5.0f],LeftArm:[0.0f,0.0f,-5.0f]}}
return 1