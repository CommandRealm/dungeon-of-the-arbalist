##called whenever a player joins the game

##Basic functions
tp @s 7 91 22 45 0
spawnpoint @s 7 90 22
scoreboard players set @s has_joined 1
clear @s
gamemode adventure @s
title @s times 0 25 5
effect clear @s

##Remove tags
tag @s remove playing

##effect
effect give @s instant_health 1 5 true




##attribute resets

attribute @s generic.max_health base set 20.0
attribute @s generic.movement_speed base set 0.1
attribute @s generic.attack_speed base set 1024


##if we haven't been reset
execute unless entity @s[scores={resetting=1..}] run function general:reset

##Rank
function general:rank

##if we were in the parkour
tag @s remove parkour

##if we were in the tutorial
tag @s remove tutorial
tag @s remove mechanics

##If we logged off in generation
tag @s remove in_generation

##Attribute
attribute @s generic.knockback_resistance base set 1.0

##Seeing if we should reset the lobby NPCs
execute store result score $calculate calculate if entity @a[x=0,y=66,z=0,distance=..500,gamemode=adventure]
execute if score $calculate calculate matches 1 run function lobby:npc/summon

##bossbars
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]
execute if score $game state matches 1.. if score $mode settings matches 0 if score $wave_length game matches 1.. run bossbar set game:wave players @a[x=0,y=66,z=0,distance=500..]
execute if score $game state matches 1.. if score $started boss matches 1 run bossbar set game:boss players @a[x=0,y=66,z=0,distance=500..]

xp set @s 0 levels
xp set @s 0 points

tag @s remove spectatorable

scoreboard objectives remove back_to_lobby
execute if score $game state matches 1.. run scoreboard objectives add back_to_lobby trigger
scoreboard players enable @a[team=spectator] back_to_lobby
