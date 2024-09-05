##Called to teleport
execute at @e[type=minecraft:zombie,tag=boss] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute at @r[gamemode=adventure,tag=playing,tag=in_boss_room,team=game] at @e[type=minecraft:marker,distance=5..,tag=boss_room_spawnpoint,sort=nearest,limit=1] run tp @e[type=minecraft:zombie,tag=boss] ~ ~ ~
execute at @e[type=minecraft:zombie,tag=boss] run particle minecraft:dust{color:[0.604f,0.867f,0.647f],scale:1.0f} ~ ~1 ~ 0.15 0.15 0.15 0.15 10
execute at @e[type=minecraft:zombie,tag=boss] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0

effect give @e[type=minecraft:zombie,tag=boss] minecraft:weakness 3 255 true

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 100
return 1