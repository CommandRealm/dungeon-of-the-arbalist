##Called when someone is in the boss room but hasn't started the fight yet.

execute as @e[type=area_effect_cloud,tag=spin] at @s positioned as @e[type=area_effect_cloud,tag=start_boss_fight,limit=1] run tp @e[type=giant,tag=start_boss_fight_button] ^ ^ ^5 facing entity @e[type=area_effect_cloud,tag=start_boss_fight,limit=1]
execute as @e[type=giant,tag=start_boss_fight_button,limit=1] at @s run tp @s ^2.5 ^ ^1

execute store result entity @e[type=giant,tag=start_boss_fight_button,limit=1] Pos[1] double 1 run scoreboard players get $y_level boss
execute as @e[type=giant,tag=start_boss_fight_button,limit=1] at @s run data modify entity @s Fire set value 0s

##particle at the block.
execute at @e[type=area_effect_cloud,tag=start_boss_fight] run particle item chiseled_nether_bricks ~ ~ ~ 1 1 1 0.15 5


#Particles on the outside doors.
particle flame 2018.0 64 0.0 1 1 1 0.15 5 force @a[tag=!in_boss_room]
particle flame 1981.0 64 0.0 1 1 1 0.15 5 force @a[tag=!in_boss_room]
particle flame 2000.0 64 -19.0 1 1 1 0.15 5 force @a[tag=!in_boss_room]
particle flame 2000.0 64 18.0 1 1 1 0.15 5 force @a[tag=!in_boss_room]