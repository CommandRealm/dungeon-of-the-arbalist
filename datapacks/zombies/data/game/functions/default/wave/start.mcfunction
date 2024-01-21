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
execute if score $wave game matches ..14 run scoreboard players operation $calculate calculate *= $110 number
execute if score $wave game matches 15.. run scoreboard players operation $calculate calculate *= $55 number
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


execute as @a at @s unless score @s intro_text matches 1.. run tag @s remove play_alternate_title

# resetting shopkeepers anger
scoreboard players set @e[type=pillager,tag=shopkeeper,tag=!enemy] attack 0

# if volition started
execute if score $volition game matches 1 if score $wave game matches 15 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[tag=playing,team=game,scores={reached_tier=0,crossbow_id=0}] only advancements:volition/random-default


# advancements
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 20.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-20
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 30.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-30
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 40.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-40
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 50.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-50
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 60.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-60
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 70.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-70
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 80.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-80
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 90.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-90
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 100.. run advancement grant @a[tag=playing,team=game] only advancements:volition/wave-100



execute if score $volition game matches 1 if score $wave game matches 101.. run advancement grant @a[tag=playing,team=game] only advancements:hidden/hidden-wave

# tellraw for trials
execute if score $random_crossbow modifiers matches 1 as @a[tag=playing,team=!enemy] at @s run function game:modifiers/random_crossbow/tellraws

# if we have scramble
execute as @a[tag=playing,team=!enemy,tag=trial_scramble] at @s run function game:trials/scramble/new_trial



# setting modifier
execute if score $enemy_per_wave modifiers matches 1 run scoreboard players set $chosen_modifier_enemy calculate -1