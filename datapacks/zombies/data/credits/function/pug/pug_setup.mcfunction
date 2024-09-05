scoreboard objectives add pug_arms dummy
scoreboard players set 69 pug_arms 69
scoreboard players set -1 pug_arms -1
scoreboard players set 130 pug_arms 130

kill @e[type=minecraft:armor_stand,tag=pug]
summon minecraft:armor_stand 29 91.5 17 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[90.0f,0.0f,0.0f],LeftLeg:[-90.0f,-5.0f,10.0f],RightLeg:[-86.0f,5.0f,-10.0f],LeftArm:[75.0f,117.0f,0.0f],RightArm:[82.0f,235.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:5331842}},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:8495539}},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:16758861}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;20923959,-2123215849,-2091115223,502557868],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FhMWFhZDRiNTBlMGYxNGFkM2Q4YjBkYmIwMTY0YTY0YzE2OThjNDcxNDU0YTVjYTU1YzUyNGM0MDUwZTFjMyJ9fX0="}]}},count:1}],DisabledSlots:4144959,Rotation:[45.0f,0.0f],CustomNameVisible:0b,Tags:["pug","show_details"],Marker:1b}
return 1