##Set position for the exit point.

##Tp just in case there is no player in the room (due to dying and players being outside.)
tp @e[type=minecraft:wither_skeleton,tag=boss] @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=nearest,limit=1]

tp @e[type=minecraft:wither_skeleton,tag=boss] @r[gamemode=adventure,tag=playing,tag=in_boss_room]





##Particles
execute at @e[type=minecraft:wither_skeleton,tag=boss] run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 0
execute at @e[type=minecraft:wither_skeleton,tag=boss] run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 0.75
execute at @e[type=minecraft:wither_skeleton,tag=boss] run playsound minecraft:block.grass.place master @a ~ ~ ~ 1 1.0

execute at @e[type=minecraft:wither_skeleton,tag=boss] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 0.67
execute at @e[type=minecraft:wither_skeleton,tag=boss] run particle minecraft:block{block_state:{Name:"minecraft:coarse_dirt"}} ~ ~ ~ 0.15 0.75 0.15 0.15 100 force
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:30,Tags:["die_between_games","resurface_particle"]}
execute as @e[type=minecraft:wither_skeleton,tag=boss] at @s run tp @s ~ ~-5 ~

##Removing a bit of time on the countdown
scoreboard players remove $attack boss 5
return 1