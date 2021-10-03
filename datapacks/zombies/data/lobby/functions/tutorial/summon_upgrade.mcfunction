##Called to summon an upgrade for the tutorial.
kill @e[type=area_effect_cloud,tag=upgrade_spot,x=0,y=66,z=0,distance=..500]
kill @e[type=armor_stand,tag=upgrade_marker,x=0,y=66,z=0,distance=..500]
execute positioned 12 85 -12 run summon area_effect_cloud ~ ~ ~ {Tags:["die_between_games","nature_upgrade_spot","upgrade_spot","inactive"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned 12 85 -12 as @e[type=area_effect_cloud,tag=inactive,tag=upgrade_spot,distance=..5] at @s run function game:mechanics/upgrade/activate_upgrade_spot

scoreboard players reset $upgrade tutorial