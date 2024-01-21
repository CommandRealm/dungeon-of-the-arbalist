# called to open boss doors



# called to initialize rooms near boss room
execute as @e[type=marker,tag=doorway,tag=boss_door] at @s facing 2000.0 66 0.0 rotated ~180 ~ positioned ^ ^ ^16 as @e[type=area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] at @s if entity @s[tag=!opened] run function game:default/door/check_newly_opened_room


scoreboard players set @e[type=marker,tag=doorway,tag=boss_door] death_timer 30
tag @e[type=marker,tag=doorway,tag=boss_door] add on_death_timer

execute if score $boss boss matches 1 run fill 2002 63 15 1997 63 15 air destroy
execute if score $boss boss matches 1 run fill 2002 65 15 1997 65 15 air destroy
execute if score $boss boss matches 1 run fill 2002 67 15 1997 67 15 air destroy
execute if score $boss boss matches 1 run fill 1984 63 2 1984 63 -3 air destroy
execute if score $boss boss matches 1 run fill 1984 65 2 1984 65 -3 air destroy
execute if score $boss boss matches 1 run fill 1984 67 2 1984 67 -3 air destroy
execute if score $boss boss matches 1 run fill 1997 63 -16 2002 63 -16 air destroy
execute if score $boss boss matches 1 run fill 1997 65 -16 2002 65 -16 air destroy
execute if score $boss boss matches 1 run fill 1997 67 -16 2002 67 -16 air destroy
execute if score $boss boss matches 1 run fill 2015 63 -3 2015 63 2 air destroy
execute if score $boss boss matches 1 run fill 2015 65 -3 2015 65 2 air destroy
execute if score $boss boss matches 1 run fill 2015 67 -3 2015 67 2 air destroy


execute if score $boss boss matches 3 run fill 1986 63 -2 1986 65 0 air destroy
execute if score $boss boss matches 3 run fill 1986 64 1 1986 65 1 air destroy
execute if score $boss boss matches 3 run fill 1986 66 0 1986 66 -1 air destroy

execute if score $boss boss matches 3 run fill 1999 63 14 2000 65 14 air destroy
execute if score $boss boss matches 3 run fill 2001 64 14 1998 64 14 air destroy

execute if score $boss boss matches 3 run fill 2013 63 -2 2013 65 0 air destroy
execute if score $boss boss matches 3 run fill 2013 64 1 2013 66 -1 air destroy

execute if score $boss boss matches 3 run setblock 1999 65 -14 air destroy
execute if score $boss boss matches 3 run setblock 2001 64 -14 air destroy
execute if score $boss boss matches 3 run fill 2000 63 -14 1998 64 -14 air destroy



execute if score $boss boss matches 3 run fill 2015 51 15 1984 82 -16 air replace lava[level=0]

##remove tag

tag @a remove in_boss_room
