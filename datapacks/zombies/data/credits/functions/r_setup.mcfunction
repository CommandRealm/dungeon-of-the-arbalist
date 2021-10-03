scoreboard objectives add regs dummy
kill @e[tag=regsbody]
kill @e[tag=regshead]
summon armor_stand -89 76.5 -9 {ShowArms:1b,NoBasePlate:1b,Rotation:[-45.0f,0.0f],Tags:["regsbody","show_details"],Invulnerable:1b,Marker:1b,NoGravity:1b,Pose:{RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[-10.0f,0.0f,20.0f],LeftArm:[-10.0f,0.0f,-20.0f]}}
summon armor_stand -89 76.5 -9 {Invisible:1b,Tags:["regshead"],Invulnerable:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;696348652,224807448,-1445308472,1718841427],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwMTI4NjQ1ZjkyZGRhZjNjMjNlZTM2NGFlMjVjNDcyNjdmYmJmNmFjOWQzZjA1NGQ0MzIwYTVlNzZjZTQzOSJ9fX0="}]}}}}]}
item replace entity @e[tag=regsbody] armor.feet with leather_boots{display:{color:16711701}}
item replace entity @e[tag=regsbody] armor.chest with leather_chestplate{display:{color:16711701}}
item replace entity @e[tag=regsbody] armor.legs with leather_leggings{display:{color:15592941}}