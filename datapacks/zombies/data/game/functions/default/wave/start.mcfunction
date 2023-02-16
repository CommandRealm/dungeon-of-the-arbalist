##called to start the wave

##adding wave score
scoreboard players add $wave game 1

##intro function (title and sounds)
function game:default/wave/intro/1

##starting enemy spawn timers
execute as @a[tag=playing,gamemode=adventure,sort=random,limit=10,tag=!in_boss_room] at @s run function game:enemy/get_spawn_timer

##wave length timer
scoreboard players set $wave_length game 1200

##resetting enemies spawned metric
scoreboard players reset $enemies_spawned game

##Adding in additional time for the wave.
scoreboard players operation $calculate calculate = $wave game
scoreboard players remove $calculate calculate 1
execute if score $calculate calculate matches 11.. run scoreboard players set $calculate calculate 11
scoreboard players operation $calculate calculate *= $110 number
scoreboard players operation $wave_length game += $calculate calculate

##Saving the wave length in bossbar time so we can compare it when we summon minibosses.

scoreboard players operation $bossbar_length game = $wave_length game 

##If we're starting the wave where a door needs something.
execute if score $dark_door game = $wave game run function game:default/door/late_generation/open_dark_doors

execute if score $boss_door game = $wave game run function game:default/door/late_generation/open_boss_doors


##Adding in the bossbar
bossbar remove game:wave
bossbar add game:wave [{"text":""}]
bossbar set game:wave color green
bossbar set game:wave style progress
bossbar set game:wave players @a[x=0,y=66,z=0,distance=500..]
execute store result bossbar game:wave max run scoreboard players get $wave_length game
execute store result bossbar game:wave value run scoreboard players get $wave_length game
function game:default/wave/update_bossbar_ui

##night vision if its the first wave
execute if score $wave game matches 1 run effect give @a[tag=playing] night_vision 70 0 true


execute as @e[type=marker,tag=doorway,tag=!edge_doorway] at @s if block ~ ~ ~ polished_andesite run kill @s

##Removing tags
tag @e[type=marker] remove no_delay_spawn
scoreboard players reset @e[type=marker] spawn_delay


tag @a remove play_alternate_title