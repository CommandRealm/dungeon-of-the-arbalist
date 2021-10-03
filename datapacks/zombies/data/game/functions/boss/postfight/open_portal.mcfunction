##Called to open the portal.

##message and Sound
 tellraw @a[tag=playing] [{"text":"☄","color":"dark_gray"},{"text":" - ","color":"gray"},{"text":"The portal is now open! ","color":"dark_green"},{"text":"Reach the boss room and enter the portal to escape the dungeon.","color":"green"}]

##Sound
execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1000 0.890899
execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1000 1.122462
execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1000 1.334840
execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1000 1.781797

##Removing bossbar
bossbar remove game:boss


##Kingdom portal
execute if score $mode settings matches 2 run clone 3158 43 259 3162 43 263 3158 52 259