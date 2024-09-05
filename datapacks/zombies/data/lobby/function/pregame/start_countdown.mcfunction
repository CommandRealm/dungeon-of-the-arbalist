##Function that starts the countdown

##Prepares scores for the countdown.
scoreboard players set $countdown pregame 100
scoreboard players set $second pregame 20
##Other
title @a times 0 25 5

title @a[gamemode=adventure] title [{"text":"5","bold":true,"color":"gray","type":"text"},{"text":" seconds . . .","color":"dark_green","bold":false,"type":"text"}]

execute as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.9

execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door master @s ~ ~ ~ 1 1.5




##Sidebar obj
scoreboard objectives remove readied_players
scoreboard objectives add readied_players dummy [{"text":"-=-","color":"gray","bold":false,"type":"text"},{"text":" Playing ","color":"dark_green","bold":true,"type":"text"},{"text":"-=-","color":"gray","bold":false,"type":"text"}]
scoreboard objectives setdisplay sidebar readied_players


execute as @e[type=minecraft:armor_stand,x=4,y=92,z=31,tag=lobby_text_marker,sort=nearest,limit=1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone",components:{"minecraft:custom_data":{current:["C","a","n","c","e","l"],current_colored:[]}},count:1}]}
return 1