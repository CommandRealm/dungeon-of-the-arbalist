##called to summon the mob

##setting wave
scoreboard players set $wave game 13

execute at @e[type=wither_skeleton,tag=boss] run summon marker ~ ~2 ~ {Tags:["temporary_tag","die_soon"],Duration:1}
execute at @e[type=wither_skeleton,tag=boss] positioned ~ ~2 ~ run function game:enemy/summon_enemy
kill @e[type=area_effect_cloud,tag=die_soon]


execute if score $erodus_dir boss matches 0 at @e[type=wither_skeleton,tag=boss] positioned ~ ~2 ~ run data merge entity @e[tag=enemy,distance=..1,tag=!boss,limit=1,sort=nearest] {Motion:[0.0d,0.3d,0.5d]}
execute if score $erodus_dir boss matches 1 at @e[type=wither_skeleton,tag=boss] positioned ~ ~2 ~ run data merge entity @e[tag=enemy,distance=..1,tag=!boss,limit=1,sort=nearest] {Motion:[0.0d,0.3d,-0.5d]}
execute if score $erodus_dir boss matches 2 at @e[type=wither_skeleton,tag=boss] positioned ~ ~2 ~ run data merge entity @e[tag=enemy,distance=..1,tag=!boss,limit=1,sort=nearest] {Motion:[0.5d,0.3d,0.0d]}
execute if score $erodus_dir boss matches 3 at @e[type=wither_skeleton,tag=boss] positioned ~ ~2 ~ run data merge entity @e[tag=enemy,distance=..1,tag=!boss,limit=1,sort=nearest] {Motion:[-0.5d,0.3d,0.0d]}


scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 80

##Randomizing the cooldown
execute store result score $erodus_dir boss run loot insert 0 1 0 loot random:4
function random:reset_chest
execute if score $erodus_dir boss matches 0 run scoreboard players remove $cooldown boss 30
execute if score $erodus_dir boss matches 1 run scoreboard players remove $cooldown boss 20
execute if score $erodus_dir boss matches 2 run scoreboard players add $cooldown boss 10

##Sound
execute at @e[type=wither_skeleton,tag=boss] run playsound minecraft:entity.husk.converted_to_zombie master @a ~ ~ ~ 1 0

##If this is 1 player, remove some of the timer
execute if score $starting_players game matches 1 run scoreboard players remove $cooldown boss 40