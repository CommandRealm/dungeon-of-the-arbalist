##Called to stop the attack.
##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 200

##Sounds 
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2

execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.drowned.swim master @s ~ ~ ~ 1 0
