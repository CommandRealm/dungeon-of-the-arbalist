##Runs when countdown ends
scoreboard players reset $countdown pregame

##Sidebar reset
scoreboard objectives setdisplay sidebar

##Resetting start button text
execute as @e[type=minecraft:armor_stand,x=4,y=92,z=31,tag=lobby_text_marker,sort=nearest,limit=1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone",components:{"minecraft:custom_data":{current:["S","t","a","r","t"],current_colored:[]}},count:1}]}
return 1