kill @e[tag=deadpool]
summon minecraft:armor_stand 21 92 16 {Tags:["credits","deadpool","show_details"],NoBasePlate:1b,ShowArms:1b,Rotation:[-22.5f,0.0f],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;296893790,-569357200,-2001123684,-1826694826],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFkODI1YTZmNWRlZTJkODg0OWNiZmQ4OTcxODc5MTk2YjdkZjBjMzZmNGUzZDI5N2U3MDY0NTM1NzZjYzRkZiJ9fX0="}]}},count:1}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1b}
##scoreboard objectives add DArm dummy
##scoreboard players add @e[tag=deadpool] DArmD 0
##scoreboard players set @e[scores={DArmD=0},tag=deadpool] DArmD 1
data merge entity @e[tag=deadpool,limit=1] {Pose:{RightArm:[-20.2f,80.0f,75.0f],LeftArm:[-35.0f,-70.0f,-70.0f],Head:[-40.0f,0.0f,0.0f]}}
item replace entity @e[tag=deadpool] armor.feet with minecraft:leather_boots[minecraft:dyed_color={rgb:7368816}]
item replace entity @e[tag=deadpool] armor.chest with minecraft:leather_chestplate[minecraft:dyed_color={rgb:14869218}]
item replace entity @e[tag=deadpool] armor.legs with minecraft:leather_leggings[minecraft:dyed_color={rgb:1579032}]

return 1