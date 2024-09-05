##Called to summon an upgrade for the tutorial.
kill @e[type=minecraft:marker,x=0,y=66,z=0,distance=..500,tag=upgrade_spot]
kill @e[type=minecraft:armor_stand,x=0,y=66,z=0,distance=..500,tag=upgrade_marker]
execute positioned 12 85 -12 run summon minecraft:marker ~ ~ ~ {Tags:["die_between_games","nature_upgrade_spot","upgrade_spot","inactive"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 12 85 -12 as @e[type=minecraft:marker,distance=..5,tag=inactive,tag=upgrade_spot] at @s run function game:mechanics/upgrade/activate_upgrade_spot

scoreboard players reset $upgrade tutorial
return 1