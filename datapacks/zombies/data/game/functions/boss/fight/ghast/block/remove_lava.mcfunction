##Removing lava
fill 2015 51 15 1984 82 -16 air replace lava[level=0]
execute at @e[type=magma_cube,limit=1,tag=boss] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.75

##Cooldowns
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 120