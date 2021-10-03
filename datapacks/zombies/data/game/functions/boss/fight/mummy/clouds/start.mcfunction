##called to start the clouds function

##Choosing players
tag @a remove boss_clouds
tag @r[tag=playing,gamemode=adventure,team=game,tag=in_boss_room,sort=random,limit=10] add boss_clouds

execute as @a[tag=in_boss_room] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 0.85

##moving the boss
tp @e[type=wither_skeleton,tag=boss] 3160 59 261 180 0
data modify entity @e[type=wither_skeleton,tag=boss,limit=1] NoAI set value 1b

##Particles from boss
execute at @e[type=wither_skeleton,tag=boss] run particle falling_dust black_concrete ~ ~ ~ 0.25 0.25 0.25 0.15 20
execute at @e[type=wither_skeleton,tag=boss] run particle falling_dust yellow_concrete ~ ~ ~ 0.25 0.25 0.25 0.15 10
execute at @e[type=wither_skeleton,tag=boss] run particle smoke ~ ~ ~ 0.25 0.25 0.25 0.35 10

scoreboard players set $attack boss 60