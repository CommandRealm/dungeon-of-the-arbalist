##If the end cooldown is going.
execute if score $end game matches 0.. run function game:cooldown/main




##Mechanics functions
function game:mechanics/main

##Counting down enemy spawn timers
scoreboard players remove @a[scores={enemy_spawn_time=1..},tag=playing] enemy_spawn_time 1
execute as @a[scores={enemy_spawn_time=0},tag=playing] at @s run function game:enemy/player_spawn_enemy

##Enabling the price for doors.
execute as @a[tag=playing,gamemode=adventure] at @s as @e[type=area_effect_cloud,tag=door_text,sort=nearest,limit=1,distance=..5] at @s unless entity @s[nbt={CustomNameVisible:1b}] run function game:door/enable_nameplate



##If there are no alive players has_left
execute unless entity @a[tag=playing,team=game,gamemode=adventure] unless score $end game matches 0.. run function game:cooldown/start_cooldown

##Tping spectators away from the lobby
execute if score $mode settings matches 0 run tp @a[tag=playing,gamemode=spectator,x=0,y=66,z=0,distance=..200] 2000 65 0


##If the boss room is opened
execute if score $opened boss matches 1 run function game:boss/main



##Calling enemy function
function game:enemy/main


##Speedrun times
scoreboard players add @a[tag=playing,team=!dead] run 1
