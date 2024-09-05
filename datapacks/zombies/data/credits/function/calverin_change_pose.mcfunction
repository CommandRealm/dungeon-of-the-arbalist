scoreboard players add $pose calverin 1
execute if score $pose calverin matches 5.. run scoreboard players set $pose calverin 1
execute if score $pose calverin matches 1 run data merge entity @e[type=minecraft:armor_stand,tag=calverin,sort=random,limit=1] {Pose:{LeftArm:[320.0f,0.0f,226.0f],RightArm:[216.0f,0.0f,40.0f]}}
execute if score $pose calverin matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=calverin,sort=random,limit=1] {Pose:{LeftArm:[320.0f,0.0f,140.0f],RightArm:[216.0f,0.0f,320.0f]}}
execute if score $pose calverin matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=calverin,sort=random,limit=1] {Pose:{LeftArm:[320.0f,0.0f,333.0f],RightArm:[216.0f,0.0f,140.0f]}}
execute if score $pose calverin matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=calverin,sort=random,limit=1] {Pose:{LeftArm:[320.0f,0.0f,29.0f],RightArm:[320.0f,0.0f,29.0f]}}
scoreboard players reset @e[type=minecraft:armor_stand,tag=calverin,sort=random,limit=1] calverin
return 1