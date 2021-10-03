##Called to teleport
execute at @e[type=zombie,tag=boss] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute at @r[tag=playing,gamemode=adventure,team=game,tag=in_boss_room] at @e[type=marker,tag=boss_room_spawnpoint,limit=1,sort=nearest,distance=5..] run tp @e[type=zombie,tag=boss] ~ ~ ~
execute at @e[type=zombie,tag=boss] run particle dust 0.604 0.867 0.647 1 ~ ~1 ~ 0.15 0.15 0.15 0.15 10
execute at @e[type=zombie,tag=boss] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0

effect give @e[type=zombie,tag=boss] weakness 3 255 true

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 100