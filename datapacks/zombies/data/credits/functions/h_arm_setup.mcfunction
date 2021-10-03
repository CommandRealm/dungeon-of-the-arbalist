kill @e[tag=hippeh]
summon minecraft:armor_stand 25 92 15 {Tags:["credits","hippeh","show_details"],NoBasePlate:1,ShowArms:1,Rotation:[0f,0.0f],NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1508923483,-548451571,-1134652024,2114694725],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJiZWM2ZjZmYTJkOGJlZmM5YjlmYTI3YmIzMWFhNzU0MjAzYmE4NTRiYWY5ZGU5MzQzNGFiZGUyOGM0YzBlYyJ9fX0="}]}}}}],Pose:{RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]},Marker:1}
scoreboard objectives add HArm1 dummy
scoreboard objectives add HArm2 dummy
scoreboard objectives add HArmD dummy
scoreboard objectives add HArmD2 dummy
scoreboard players add @e[tag=hippeh] HArmD 0
scoreboard players add @e[tag=hippeh] HArmD2 0
scoreboard players set @e[scores={HArmD=0},tag=hippeh] HArmD 1
scoreboard players set @e[scores={HArmD2=0},tag=hippeh] HArmD2 1
scoreboard players set @e[tag=hippeh] showdetails -100
data merge entity @e[tag=hippeh,limit=1] {Pose:{RightArm:[-30.0f,-150.0f,55.0f],LeftArm:[-20.0f,-120.0f,-40.0f]}}
item replace entity @e[tag=hippeh] armor.feet with leather_boots{display:{color:5789784}}
item replace entity @e[tag=hippeh] armor.chest with leather_chestplate{display:{color:10039096}}
item replace entity @e[tag=hippeh] armor.legs with leather_leggings{display:{color:2316835}}