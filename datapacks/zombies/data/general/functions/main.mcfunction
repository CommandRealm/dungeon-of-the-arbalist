##The always running function.

# join game stuffs
scoreboard players add $status game_time 1
scoreboard players add @a game_time 1

##Join game call
execute as @a at @s unless score @s game_time = $status game_time run function general:join_game

##Leave game call
execute as @a[scores={has_left=1..}] run function general:leave_game



##Calling the main game function.
execute if score $game state matches 1 run function game:main


##Lobby function
execute if entity @a[x=0,y=66,z=0,distance=..500] run function lobby:main


##Saturation
effect give @a saturation 2 255 true

##Spinning AEC
execute as @e[type=area_effect_cloud,tag=spin,limit=1] at @s run tp @s ~ ~ ~ ~2.5 ~
execute as @e[type=area_effect_cloud,tag=spin_2,limit=1] at @s run tp @s ~ ~ ~ ~15 ~

##Killing tnt
kill @e[type=tnt,nbt={Fuse:1s}]


# daylight cycle
execute store result score $time day_time run time query daytime
execute if score $time day_time matches 22600 run time set 13360



