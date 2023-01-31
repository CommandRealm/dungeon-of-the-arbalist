##Function for the when the game first starts.
scoreboard players set $game state 1

scoreboard players set $time game 0

##Clearing forceload
forceload remove all


##Giving people the playing tag
tag @a[scores={ready=1..}] add playing
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]


##healing players
effect give @a[tag=playing] instant_health 1 9 true

##Title
title @a[tag=playing] times 5 45 5

##joining game team
team join game @a[tag=playing]

tag @a[tag=playing] remove tutorial

##recreating currency objective
#saving tutorial people's treasure
execute as @a[tag=tutorial] at @s run scoreboard players operation @s calculate = @s treasure
scoreboard objectives remove treasure
scoreboard objectives add treasure dummy [{"text":"treasure","color":"gold"}]
execute as @a[tag=tutorial] at @s run scoreboard players operation @s treasure = @s calculate

scoreboard players set @a[tag=playing] treasure 0
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health

advancement revoke @a only game:kill_miniboss
advancement revoke @a only game:enemy_damage/wither_skeleton


##Death count objective
scoreboard objectives remove death
scoreboard objectives add death deathCount

##Resetting end cooldown things
scoreboard players reset $end game

##Title times
title @a[tag=playing] times 0 25 5


##Advancements
advancement grant @a[tag=playing] only game:inventory_changed
advancement revoke @a[tag=playing] only game:inventory_changed

##Generating IDs
scoreboard objectives remove id
scoreboard objectives add id dummy
scoreboard players set $id id 0
execute as @a[tag=playing,sort=random] at @s run function game:generate_id

##Resetting streak
scoreboard players reset @a streak

##Resetting times shot
scoreboard players reset @a times_shot

##Resetting
scoreboard players set @a loot_multiplier 100
scoreboard players set @a loot_remainder 0

##Resetting scores
scoreboard players reset @a get_kill

##Resetting new treasure score
scoreboard players reset @a new_treasure
scoreboard players reset @a remove_treasure

##armor objective 
scoreboard players add @a[tag=playing] armor 0

##setting difficulty
scoreboard players add $difficulty settings 0

##Resetting drop
scoreboard players reset @a drop

scoreboard players set $spawn_in_progress game 0

##Displaying difficulty
execute if score $difficulty settings matches -1 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Training","color":"white","bold":true}]
execute if score $difficulty settings matches 0 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Super Easy","color":"dark_green","bold":true}]
execute if score $difficulty settings matches 1 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Easy","color":"green","bold":true}]
execute if score $difficulty settings matches 2 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Medium","color":"yellow","bold":true}]
execute if score $difficulty settings matches 3 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Hard","color":"red","bold":true}]
execute if score $difficulty settings matches 4 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Super Hard","color":"dark_red","bold":true}]
execute if score $difficulty settings matches 5 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Hardcore","color":"#600011","bold":true}]
execute if score $difficulty settings matches 6 run tellraw @a[tag=playing] [{"text":"Difficulty","color":"gold"},{"text":": ","color":"gray"},{"text":"Nightmare","color":"#423031","bold":true}]

execute if score $difficulty settings matches -1 run tellraw @a[tag=playing] [{"text":"Welcome to training mode! ","color":"white"},{"text":"In this mode, you won't take damage and will have infinite treasure. Advancements, titles, and leaderboards won't be updated after completing rounds. Once you are finished in training mode, use ","color":"gray","bold":false},{"text":"/trigger end","color":"green"},{"text":" to return to the lobby.","color":"gray"}]

tag @a remove sent_vote_end_message

##
scoreboard players set $loading_screen game 0

##title times
title @a[tag=playing] times 0 1000000 5

scoreboard players reset @a shoot_bow


scoreboard players add @a dead_particle 0

scoreboard players reset @a spectator_delay


##stats

scoreboard players set @a[tag=playing] boost_health 0
scoreboard players set @a[tag=playing] boost_quiver 0
scoreboard players set @a[tag=playing] boost_treasure 0
scoreboard players set @a[tag=playing] boost_damage 0
scoreboard players set @a[tag=playing] boost_speed 0
scoreboard players set @a[tag=playing] boost_revive 0


scoreboard players set @a[tag=playing] prestige_health 0
scoreboard players set @a[tag=playing] prestige_quiver 0
scoreboard players set @a[tag=playing] prestige_treasure 0
scoreboard players set @a[tag=playing] prestige_damage 0
scoreboard players set @a[tag=playing] prestige_speed 0
scoreboard players set @a[tag=playing] prestige_revive 0

scoreboard players set @a[tag=playing] revive_remainder 0
scoreboard players set @a[tag=playing] b_revive_time 0
scoreboard players set @a[tag=playing] b_damage 0

execute as @a[tag=playing] at @s run function game:mechanics/stat_boosts/update_attributes

scoreboard players set @a[tag=playing] color 16777215


##
scoreboard players set @a[tag=playing] colors_in_armor 1
scoreboard players set @a[tag=playing] colors_for_armor 2

##resetting utility objectives.
scoreboard players reset @a drop_key
scoreboard players reset @a damage_taken

##resetting booster delay
scoreboard players reset @a booster_delay

##Tag
tag @a remove shown_item_message
tag @a remove needs_effect_description

##item description delay
scoreboard players reset @a desc_delay

##removing players from parkour
tag @a[tag=playing] remove parkour


scoreboard objectives remove local_shots
scoreboard objectives remove local_hits
scoreboard objectives remove local_kills
scoreboard objectives remove local_accuracy
scoreboard objectives remove local_treasure
scoreboard objectives remove local_spent


scoreboard objectives add local_shots dummy
scoreboard objectives add local_hits dummy
scoreboard objectives add local_kills dummy
scoreboard objectives add local_accuracy dummy
scoreboard objectives add local_treasure dummy
scoreboard objectives add local_spent dummy


scoreboard players set @a[tag=playing] local_shots 0
scoreboard players set @a[tag=playing] local_hits 0
scoreboard players set @a[tag=playing] local_kills 0
scoreboard players set @a[tag=playing] local_accuracy 0
scoreboard players set @a[tag=playing] local_treasure 0
scoreboard players set @a[tag=playing] local_spent 0

##Stat for playing the gamemode
execute unless score $difficulty settings matches -1 run scoreboard players add @a[tag=playing] global_games 1

##Advancement
advancement grant @a only game:hit
advancement revoke @a only game:hit
advancement grant @a only game:punch_kill
advancement revoke @a only game:punch_kill

##Setting up button.
setblock 0 92 28 air destroy
scoreboard players set $button pregame 5


##Removing journal advancements
advancement grant @a only journal:kills/zombie
advancement grant @a only journal:kills/spider
advancement grant @a only journal:kills/knight
advancement grant @a only journal:kills/brute
advancement grant @a only journal:kills/leaper
advancement grant @a only journal:kills/skeleton
advancement grant @a only journal:kills/witch
advancement grant @a only journal:kills/husk
advancement grant @a only journal:kills/evoker
advancement grant @a only journal:kills/vex
advancement grant @a only journal:kills/hooded
advancement grant @a only journal:kills/shopkeeper

advancement grant @a only journal:kills/spider_queen
advancement grant @a only journal:kills/fiery_fiend
advancement grant @a only journal:kills/furious_fungus
advancement grant @a only journal:kills/polar_family
advancement grant @a only journal:kills/daring_dancer
advancement grant @a only journal:kills/royal_archer
advancement grant @a only journal:kills/static_splitters
advancement grant @a only journal:kills/gravedigger
advancement grant @a only journal:kills/ender_king
advancement grant @a only journal:kills/scary_swarm
advancement grant @a only journal:kills/skelrath
advancement grant @a only journal:kills/viscean
advancement grant @a only journal:kills/exploding_guardian
advancement grant @a only journal:kills/shield_guardian
advancement grant @a only journal:kills/nixeous
advancement grant @a only journal:kills/jockey
advancement grant @a only journal:kills/molten_titan
advancement grant @a only journal:kills/magma_cube
advancement grant @a only journal:kills/essence_of_the_forest

advancement grant @a only journal:kills/witch_shopkeeper
advancement grant @a only journal:kills/gallant_golem
advancement grant @a only journal:kills/erodus
advancement grant @a only journal:kills/vindicator_shopkeeper
advancement grant @a only journal:kills/blacksmith
advancement grant @a only journal:kills/tower_archer
advancement grant @a only journal:kills/cobalt_king
advancement grant @a only journal:kills/cobalt_king_guard
advancement grant @a only journal:kills/golden_guard

advancement revoke @a only journal:kills/zombie
advancement revoke @a only journal:kills/spider
advancement revoke @a only journal:kills/knight
advancement revoke @a only journal:kills/brute
advancement revoke @a only journal:kills/leaper
advancement revoke @a only journal:kills/skeleton
advancement revoke @a only journal:kills/witch
advancement revoke @a only journal:kills/husk
advancement revoke @a only journal:kills/evoker
advancement revoke @a only journal:kills/vex
advancement revoke @a only journal:kills/hooded
advancement revoke @a only journal:kills/shopkeeper

advancement revoke @a only journal:kills/spider_queen
advancement revoke @a only journal:kills/fiery_fiend
advancement revoke @a only journal:kills/furious_fungus
advancement revoke @a only journal:kills/polar_family
advancement revoke @a only journal:kills/daring_dancer
advancement revoke @a only journal:kills/royal_archer
advancement revoke @a only journal:kills/static_splitters
advancement revoke @a only journal:kills/gravedigger
advancement revoke @a only journal:kills/ender_king
advancement revoke @a only journal:kills/scary_swarm
advancement revoke @a only journal:kills/skelrath
advancement revoke @a only journal:kills/viscean
advancement revoke @a only journal:kills/exploding_guardian
advancement revoke @a only journal:kills/shield_guardian
advancement revoke @a only journal:kills/nixeous
advancement revoke @a only journal:kills/jockey
advancement revoke @a only journal:kills/molten_titan
advancement revoke @a only journal:kills/magma_cube
advancement revoke @a only journal:kills/essence_of_the_forest

advancement revoke @a only journal:kills/witch_shopkeeper
advancement revoke @a only journal:kills/gallant_golem
advancement revoke @a only journal:kills/erodus
advancement revoke @a only journal:kills/vindicator_shopkeeper
advancement revoke @a only journal:kills/blacksmith
advancement revoke @a only journal:kills/tower_archer
advancement revoke @a only journal:kills/cobalt_king
advancement revoke @a only journal:kills/cobalt_king_guard
advancement revoke @a only journal:kills/golden_guard
##Resetting belowName selectors.
scoreboard players set $below_name_time game 60
scoreboard players set $below_name_state game 0

##Seeing how many people are playing FROM THE BEGINNING
execute store result score $starting_players game if entity @a[tag=playing]

##Clearing books
clear @a knowledge_book

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##removing default crossbow tag
tag @a remove no_default_title

##tier reached
scoreboard players set @a[tag=playing] reached_tier 0

##Miniboss score (for the sake of dropping keys)
scoreboard players set $summoned_miniboss game 0

#Adding game id
scoreboard players add $id game_id 1
scoreboard players operation @a[tag=playing] game_id = $id game_id

##End game button
scoreboard objectives remove end
scoreboard objectives add end trigger
scoreboard players enable @a[tag=playing] end

tag @a remove voted_end
scoreboard players reset @a drop_compass

##speedrun objective
scoreboard objectives remove run
scoreboard objectives add run dummy

##Kill switch
scoreboard players set $game_end_countdown game 72000

# removing shopkeeper death tag
tag @a remove anger_shopkeepers

# removing shop reset tag
tag @a remove shop_reset

# seeing if volition is active
scoreboard players set $volition game 0
execute if score $mode settings matches 0 if score $difficulty settings matches 3.. run scoreboard players set $volition game 1