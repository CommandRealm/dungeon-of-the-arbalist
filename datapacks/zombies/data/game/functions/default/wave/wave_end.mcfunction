##Called to end the wave.


##Tellraw
tellraw @a[tag=playing] [{"text":"Wave ","color":"dark_green"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" has ended.","color":"gray"}]
tellraw @a[team=spectator] [{"text":"Wave ","color":"dark_green"},{"score":{"objective":"game","name":"$wave"},"color":"green","bold":true},{"text":" has ended.","color":"gray"}]
tellraw @a[tag=playing,team=game] [{"text":"The next wave will begin shortly. Click ","color":"#46623b"},{"text":"[here]","color":"#799d76","bold":true,"clickEvent":{"action":"run_command","value":"/trigger skip set 1"}},{"text":" or drop your compass to vote to skip the delay. ","color":"#46623b"}]

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
execute if score $wave game matches 12.. run scoreboard players set $time game 599
## execute if score $wave game matches 13 run scoreboard players set $time game 589
## execute if score $wave game matches 14 run scoreboard players set $time game 579
## execute if score $wave game matches 15.. run scoreboard players set $time game 569

##removing bossbar
bossbar remove game:wave

##trigger objective
scoreboard objectives remove skip
scoreboard objectives add skip trigger
scoreboard players set @a[tag=playing,gamemode=adventure] skip 0
scoreboard players enable @a[tag=playing,gamemode=adventure] skip

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


# scheduling unlocks
schedule function game:default/wave/check_armor_trim_unlocks 50t


# shop resets
tag @a remove shop_reset
scoreboard players remove $waves_till_shop_reset game 1
execute if score $waves_till_shop_reset game matches 0 run tag @a[tag=playing] add shop_reset
execute if score $waves_till_shop_reset game matches 0 run scoreboard players set $waves_till_shop_reset game 10

tag @a[tag=playing,tag=shop_reset] add play_alternate_title


# if we need to welcome the player to volition
execute if score $wave game matches 14 if score $volition game matches 1 as @a[tag=playing,team=game,gamemode=adventure] run function game:default/wave/volition/intro_text/start

#if there is a shop reset
execute if entity @a[tag=shop_reset,tag=playing] as @e[type=pillager,tag=shopkeeper,team=!enemy,tag=!tutorial_shopkeeper] at @s run function game:shops/refill/refill_shop

# killing item displays from phantoms
kill @e[type=item_display,tag=die_between_waves]


execute if entity @a[tag=shop_reset,tag=playing] run tellraw @a[x=0,y=0,z=0,distance=500..] [{"text":"🧪","color":"#61369c"},{"text":": ","color":"gray"},{"text":"Shops ","color":"gold","bold":false},{"text":"have been","color":"gray"},{"text":" reset","color":"red"},{"text":".","color":"gray"}]

# if there is a shop reset
scoreboard players set $shop_reset game 20
execute if entity @a[tag=shop_reset,tag=playing] unless score $wave game matches 14 run function game:default/wave/intro/shop_reset/main

# called to break gas masks
execute if entity @a[tag=playing,tag=has_gas_mask,team=game] run schedule function game:shops/items/gas_mask/call_break 40t

# ending trials
execute as @a[tag=playing,tag=trial_scramble] at @s run function game:trials/scramble/end_trial