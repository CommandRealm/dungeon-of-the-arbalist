##Reset glass function
fill 2015 61 -16 1984 61 15 minecraft:light_gray_stained_glass replace minecraft:red_stained_glass
execute unless score $attack boss matches 1.. as @a[gamemode=adventure,tag=playing,tag=in_boss_room] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.25
return 1