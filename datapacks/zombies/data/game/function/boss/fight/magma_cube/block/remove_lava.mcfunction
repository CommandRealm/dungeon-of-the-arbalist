##Removing lava
fill 2015 51 15 1984 82 -16 minecraft:air replace minecraft:lava[level=0]
execute at @e[type=minecraft:magma_cube,tag=boss,limit=1] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.75

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 120
return 1