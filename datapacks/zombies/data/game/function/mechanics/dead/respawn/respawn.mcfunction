##Called to make us respawn.

gamemode adventure @s

##tag
tag @s add temporary_tag

execute as @e[type=minecraft:area_effect_cloud,tag=revive_death_spot] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=minecraft:area_effect_cloud,tag=revive_death_spot] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

tp @s[tag=!in_boss_room] @e[type=minecraft:area_effect_cloud,tag=revive_death_spot,scores={calculate=0},sort=arbitrary,limit=1]

##If we're in the boss room
tp @s[tag=in_boss_room] @e[type=minecraft:marker,tag=boss_room_spawnpoint,sort=random,limit=1]

execute at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]

scoreboard players reset @s arrow_delay


##tag removal
tag @s remove temporary_tag

scoreboard players reset @s respawn_timer

##effects
effect give @s minecraft:invisibility 100000 255 true
effect give @s minecraft:weakness 100000 255 true
effect give @s minecraft:resistance 100000 0 true

##particles and sound
execute at @s run particle minecraft:cloud ~ ~ ~ 0.15 0.15 0.15 0.25 50
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0
return 1