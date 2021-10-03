##Called to add your spawn timer


tag @e[type=marker,tag=just_spawned_enemy,sort=nearest,limit=1] add temporary_tag_2

execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 1 run scoreboard players set $calculate calculate 120
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 2 run scoreboard players set $calculate calculate 110
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 3 run scoreboard players set $calculate calculate 100
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 4 run scoreboard players set $calculate calculate 90
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 5 run scoreboard players set $calculate calculate 80
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 6 run scoreboard players set $calculate calculate 75
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 7 run scoreboard players set $calculate calculate 70
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 8 run scoreboard players set $calculate calculate 65
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 9 run scoreboard players set $calculate calculate 60
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 10 run scoreboard players set $calculate calculate 55
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 11 run scoreboard players set $calculate calculate 50
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 12 run scoreboard players set $calculate calculate 45
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 13 run scoreboard players set $calculate calculate 40
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 14 run scoreboard players set $calculate calculate 35
execute if score @e[type=marker,limit=1,tag=temporary_tag_2] wave_id matches 15.. run scoreboard players set $calculate calculate 30

tag @e[type=marker] remove temporary_tag_2

execute as @a[tag=playing,team=game,distance=..15,limit=10] run scoreboard players add $calculate calculate 30

execute if entity @e[tag=miniboss,distance=..15] run scoreboard players add $calculate calculate 150
scoreboard players remove $calculate calculate 30
