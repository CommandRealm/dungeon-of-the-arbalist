##Called to enter the boss room.

##Tp
tp @s @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=nearest,limit=1]
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=start_boss_fight,sort=nearest,limit=1]

execute if score $mode settings matches 2 run function game:adventure/kingdom/enter_boss_room

##Sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 1 0

##Tag for entering the boss room.
tag @s add in_boss_room

##Removing our spawn enemy timer (giving it to someone else if they don't have one.)
execute as @a[gamemode=adventure,tag=playing,scores={enemy_spawn_time=1..},team=game] run tag @s add temporary_tag_2
execute if entity @a[tag=playing,tag=!temporary_tag_2,team=game] run scoreboard players operation @r[tag=playing,tag=!temporary_tag_2,team=game] enemy_spawn_time = @s enemy_spawn_time
scoreboard players reset @s enemy_spawn_time
tag @a remove temporary_tag_2

##Tp ghosts to boss room
execute as @a[tag=playing,tag=!in_boss_room,team=enemy] at @s run tp @s @e[type=minecraft:marker,tag=boss_room_spawnpoint,limit=1]
execute as @a[tag=playing,tag=!in_boss_room,team=enemy] at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~ ~ 1 0
tag @a[tag=playing,team=enemy] add in_boss_room
return 1