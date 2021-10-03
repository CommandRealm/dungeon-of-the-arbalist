##called to spawn an enemy



##Tagging spawnpoints
tag @e[type=marker,tag=boss_room_spawnpoint,sort=random,limit=1] add temporary_tag_2

##Making sure that spawn doesn't have a player near it
tag @e[type=marker,tag=temporary_tag_2] add temporary_tag_3
execute as @e[type=marker,tag=temporary_tag_2] at @s if entity @a[team=game,gamemode=adventure,tag=playing,distance=..6.5] run tag @s remove temporary_tag_2
execute unless entity @e[type=marker,tag=temporary_tag_2] run tag @e[type=marker,tag=temporary_tag_3,sort=random,limit=1] add temporary_tag_2

##Getting it down to one
tag @e[type=marker,tag=temporary_tag_2,sort=random,limit=1] add temporary_tag

##Removing tags
tag @e[type=marker,tag=temporary_tag_2] remove temporary_tag_2
tag @e[type=marker,tag=temporary_tag_3] remove temporary_tag_3

function game:enemy/spawn_enemy

##Summoning the zombies.
execute store result score $spawn boss run loot insert 0 1 0 loot random:boss_spawn_timer
function random:reset_chest

##Factoring in the amount of players.
##execute store result score $calculate calculate if entity @a[tag=playing,limit=10]
##scoreboard players operation $calculate calculate *= $10 number

##scoreboard players operation $spawn boss -= $calculate calculate
##execute if score $spawn boss matches ..50 run scoreboard players set $spawn boss 50

