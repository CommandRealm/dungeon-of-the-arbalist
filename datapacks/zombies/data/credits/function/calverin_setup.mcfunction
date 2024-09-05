kill @e[type=minecraft:armor_stand,tag=calverin]
summon minecraft:armor_stand 27 92 16 {Tags:["credits","calverin","show_details"],NoBasePlate:1b,ShowArms:1b,Rotation:[22.5f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1971856918,-2122366240,-1876765928,455707243],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}},count:1}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[-30.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
scoreboard objectives add calverin dummy
data merge entity @e[tag=calverin,limit=1] {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[1.0f,0.0f,0.0f]}}


item replace entity @e[tag=calverin] armor.feet with minecraft:leather_boots[minecraft:dyed_color={rgb:15591960}]
item replace entity @e[tag=calverin] armor.chest with minecraft:leather_chestplate[minecraft:dyed_color={rgb:9079434}]
item replace entity @e[tag=calverin] armor.legs with minecraft:leather_leggings[minecraft:dyed_color={rgb:0}]

return 1