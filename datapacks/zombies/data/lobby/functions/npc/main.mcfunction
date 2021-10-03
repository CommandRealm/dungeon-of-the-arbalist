#Chat Timer
    execute as @a[gamemode=adventure,x=-68,y=59,z=17,dx=201,dy=100,dz=160,tag=!parkour] at @s unless entity @s[x=4,y=90,z=85,distance=..5] run scoreboard players add @s chat_timer 1
    execute as @a[gamemode=adventure,x=-68,y=59,z=17,dx=201,dy=100,dz=160,scores={chat_timer=160..},tag=!parkour] at @s unless entity @s[x=4,y=90,z=85,distance=..5] run function lobby:npc/chat_timer
#Relative TPs for NPCs
function lobby:npc/area_1_tp
function lobby:npc/area_2_tp
function lobby:npc/area_3_tp
function lobby:npc/area_4_tp