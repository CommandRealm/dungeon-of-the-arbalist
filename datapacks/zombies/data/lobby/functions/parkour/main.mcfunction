##Main parkour function.

##Adding parkour time
scoreboard players add @a[tag=parkour] parkour_time 1

##Calculating time.
execute as @a[tag=parkour] at @s run function lobby:parkour/calculate_time


##Giving the player the items.
execute as @a[tag=parkour] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:tipped_arrow",Count:1b}]}] run function lobby:parkour/check_arrow

##If a player changes gamemode
execute as @a[tag=parkour,gamemode=!adventure] at @s run function lobby:parkour/leave

##If a player goes to far away
execute as @a[tag=parkour,gamemode=adventure,x=-15,y=79,z=77,distance=45..] at @s run function lobby:parkour/leave_parkour_area

##Clearing ender pearls
clear @a[tag=parkour] ender_pearl

##Finishing the parkour.
execute as @a[x=-13,y=81,z=53,distance=..1] at @s run function lobby:parkour/finish

