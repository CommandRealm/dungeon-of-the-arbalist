scoreboard objectives add bagee_arm dummy
scoreboard players set -1 bagee_arm -1
scoreboard players set -60 bagee_arm -60
kill @e[type=armor_stand,tag=bagee]
summon minecraft:armor_stand 30 92 21 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,354f],RightLeg:[0f,0f,3f],RightArm:[180f,0f,330f],LeftArm:[0f,0f,-9f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-628232021,1170032373,-1551524281,-996012907],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY3YmRlNTA3MTQ0NDNlNjI5YzgzZDIzOWZmYzQzNzE1NTYzNWFmNWM4NjcxNTQ3NDVmMDM3Mzg0NjQ4NTA1YiJ9fX0="}]}}}}],DisabledSlots:4144959,Rotation:[90f,0f],Tags:["bagee","show_details"],Marker:1}
