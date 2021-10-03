scoreboard players add $pose calverin 1
execute if score $pose calverin matches 5.. run scoreboard players set $pose calverin 1
execute if score $pose calverin matches 1 run data merge entity @e[type=armor_stand,tag=calverin,limit=1,sort=random] {Pose:{LeftArm:[320f,0f,226f],RightArm:[216f,0f,40f]}}
execute if score $pose calverin matches 2 run data merge entity @e[type=armor_stand,tag=calverin,limit=1,sort=random] {Pose:{LeftArm:[320f,0f,140f],RightArm:[216f,0f,320f]}}
execute if score $pose calverin matches 3 run data merge entity @e[type=armor_stand,tag=calverin,limit=1,sort=random] {Pose:{LeftArm:[320f,0f,333f],RightArm:[216f,0f,140f]}}
execute if score $pose calverin matches 4 run data merge entity @e[type=armor_stand,tag=calverin,limit=1,sort=random] {Pose:{LeftArm:[320f,0f,29f],RightArm:[320f,0f,29f]}}
scoreboard players reset @e[type=armor_stand,tag=calverin,limit=1,sort=random] calverin