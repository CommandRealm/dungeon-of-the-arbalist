##Runs when countdown ends
scoreboard players reset $countdown pregame

##Sidebar reset
scoreboard objectives setdisplay sidebar

##Resetting start button text
execute as @e[type=armor_stand,tag=lobby_text_marker,limit=1,sort=nearest,x=4,y=92,z=31] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["S","t","a","r","t"],current_colored:[]}}]}