##Function that starts the countdown

##Prepares scores for the countdown.
scoreboard players set $countdown pregame 100
scoreboard players set $second pregame 20
##Other
title @a times 0 25 5

title @a[gamemode=adventure] title [{"text":"5","bold":true,"color":"gray"},{"text":" seconds . . .","color":"dark_green","bold":false}]

execute as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.9

execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door master @s ~ ~ ~ 1 1.5




##Sidebar obj
scoreboard objectives remove readied_players
scoreboard objectives add readied_players dummy [{"text":"-=-","color":"gray","bold":false},{"text":" Playing ","color":"dark_green","bold":true},{"text":"-=-","color":"gray","bold":false}]
scoreboard objectives setdisplay sidebar readied_players


execute as @e[type=armor_stand,tag=lobby_text_marker,limit=1,sort=nearest,x=4,y=92,z=31] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["C","a","n","c","e","l"],current_colored:[]}}]}