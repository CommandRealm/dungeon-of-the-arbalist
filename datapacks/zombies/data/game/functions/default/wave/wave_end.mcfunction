##Called to end the wave.


##Tellraw
tellraw @a[tag=playing] [{"text":"Wave ","color":"dark_green"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" has ended.","color":"gray"}]
tellraw @a[team=spectator] [{"text":"Wave ","color":"dark_green"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" has ended.","color":"gray"}]
tellraw @a[tag=playing,team=game] [{"text":"The next wave will begin shortly. Click ","color":"#46623b"},{"text":"[here]","color":"#799d76","bold":true,"clickEvent":{"action":"run_command","value":"/trigger vote_end set 1"}},{"text":" or drop your compass to vote to skip the delay. ","color":"#46623b"}]

##Killing remaining enemies
execute as @e[tag=enemy,tag=!shopkeeper] at @s run function game:death_timer_over

##Setting timer for next wave
scoreboard players set $time game 799
execute if score $wave game matches 2 run scoreboard players set $time game 779
execute if score $wave game matches 3 run scoreboard players set $time game 759
execute if score $wave game matches 4 run scoreboard players set $time game 739
execute if score $wave game matches 5 run scoreboard players set $time game 719
execute if score $wave game matches 6 run scoreboard players set $time game 699
execute if score $wave game matches 7 run scoreboard players set $time game 679
execute if score $wave game matches 8 run scoreboard players set $time game 659
execute if score $wave game matches 9 run scoreboard players set $time game 639
execute if score $wave game matches 10 run scoreboard players set $time game 619
execute if score $wave game matches 11 run scoreboard players set $time game 609
execute if score $wave game matches 12 run scoreboard players set $time game 599
execute if score $wave game matches 13 run scoreboard players set $time game 589
execute if score $wave game matches 14 run scoreboard players set $time game 579
execute if score $wave game matches 15.. run scoreboard players set $time game 569

##removing bossbar
bossbar remove game:wave

##trigger objective
scoreboard objectives remove vote_end
scoreboard objectives add vote_end trigger
scoreboard players set @a[tag=playing,gamemode=adventure] vote_end 0
scoreboard players enable @a[tag=playing,gamemode=adventure] vote_end

##Resetting spawn points
scoreboard players reset @e[type=marker,tag=zombie_spawnpoint] spawn_delay

##sound
execute as @a[tag=playing] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.67
execute as @a[tag=playing] at @s run playsound minecraft:block.anvil.break master @a ~ ~ ~ 1 0

##healing players
execute if score $difficulty settings matches 0 run effect give @a[tag=playing,gamemode=adventure,tag=!in_boss_room] minecraft:regeneration 1 255 true
execute if score $difficulty settings matches 1 run effect give @a[tag=playing,gamemode=adventure,tag=!in_boss_room] minecraft:regeneration 4 2 true
execute if score $difficulty settings matches 2 run effect give @a[tag=playing,gamemode=adventure,tag=!in_boss_room] minecraft:regeneration 3 1 true
execute if score $difficulty settings matches 3 run effect give @a[tag=playing,gamemode=adventure,tag=!in_boss_room] minecraft:regeneration 2 1 true

##Message for those who are in the boss room.
execute if score $difficulty settings matches ..3 run tellraw @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=game] [{"text":"⚠ ","color":"yellow"},{"text":"You can't heal in between waves in the boss room!","color":"red"}]
execute if score $difficulty settings matches ..3 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=game] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 2

tag @a remove sent_vote_end_message

##clearing night vision
effect clear @a[tag=playing] night_vision
