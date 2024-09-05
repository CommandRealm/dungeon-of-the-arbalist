##Damaging the players on the floor.

##Sounds 
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2

execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.drowned.swim master @s ~ ~ ~ 1 0
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 2 0
execute as @a[tag=playing,tag=in_boss_room] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0


##Damage
execute at @a[gamemode=adventure,tag=playing,tag=temporary_tag] run particle minecraft:rain ~ ~ ~ 0.5 0.5 0.5 0 500
effect give @a[gamemode=adventure,tag=playing,tag=temporary_tag] minecraft:instant_damage 1 0 true
execute if entity @a[gamemode=adventure,tag=playing,tag=temporary_tag] at @e[type=minecraft:elder_guardian,tag=boss] run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1


##Setting cooldown
scoreboard players set $active_attack boss 0
scoreboard players set $attack boss 0
scoreboard players set $cooldown boss 100

return 1