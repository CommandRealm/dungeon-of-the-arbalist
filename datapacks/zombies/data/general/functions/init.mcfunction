##init function

##Gamerules

gamerule commandBlockOutput false
gamerule doDaylightCycle true
gamerule doFireTick false
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false
gamerule doWardenSpawning false

##Basic game objectives

##Has joined will by default be null and with an unless statement it can teleport them.
scoreboard objectives add game_time dummy


scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

scoreboard objectives add state dummy
##$game will be 1 while the game is running and 0 while it isn't running.
scoreboard players add $game state 0

##pregame will countain any information required for the countdown.
scoreboard objectives add pregame dummy


##Ready score
scoreboard objectives add ready dummy

##Pregame right click detection
scoreboard objectives add click_book minecraft.used:minecraft.knowledge_book


##Number objective
scoreboard objectives add number dummy
scoreboard objectives add count dummy

scoreboard players set $60 number 60
scoreboard players set $6 number 6
scoreboard players set $20 number 20
scoreboard players set $-20 number -20
scoreboard players set $15 number 15
scoreboard players set $10 number 10
scoreboard players set $5 number 5
scoreboard players set $4 number 4
scoreboard players set $3 number 3
scoreboard players set $8 number 8
scoreboard players set $2 number 2
scoreboard players set $7 number 7
scoreboard players set $100 number 100
scoreboard players set $125 number 125
scoreboard players set $200 number 200
scoreboard players set $-1 number -1
scoreboard players set $wave_spawn_time number 8
scoreboard players set $minute number 1200
scoreboard players set $40 number 40
scoreboard players set $50 number 50
scoreboard players set $-40 number -40
scoreboard players set $75 number 75
scoreboard players set $110 number 110
scoreboard players set $55 number 55
scoreboard players set $3 number 3

##Settings
scoreboard objectives add settings dummy
scoreboard players add $mode settings 0
scoreboard players add $generation_type settings 0
scoreboard players add $grid_size settings 0

##Main objective just for game operations.
scoreboard objectives add game dummy

##Lobby teams
team add lobby
team add test
team add help
team add bld
team add prg
team add srbld
team add srprg
team add art
team add lead
team add manager
team add pc_role
team add unlock
team modify lobby color dark_green
team modify test color dark_green
team modify help color dark_green
team modify bld color dark_green
team modify prg color dark_green
team modify srbld color dark_green
team modify srprg color dark_green
team modify art color dark_green
team modify lead color dark_green
team modify manager color dark_green
team modify pc_role color dark_green
team modify unlock color dark_green
team modify test prefix {"text":"(Tester) ","color":"dark_green"}
team modify help prefix {"text":"[Helper] ","color":"green"}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify art prefix {"text":"{Artist} ","color":"green"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"} ","bold":true}]
team modify manager prefix {"text":"{Manager} ","color":"yellow"}
team modify pc_role prefix [{"text":"(","color":"dark_gray"},{"text":"pc","color":"green","bold":true},{"text":") ","color":"dark_gray"}]
team modify unlock prefix [{"text":"(","color":"gold"},{"text":"Collector","color":"green","bold":true},{"text":") ","color":"gold"}]

team add cr
team modify cr color dark_green
team modify cr prefix [{"text":"{","color":"white","bold":true},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"} ","color":"white","bold":true}]

team modify lobby collisionRule never
team modify test collisionRule never
team modify help collisionRule never
team modify bld collisionRule never
team modify prg collisionRule never
team modify srbld collisionRule never
team modify srprg collisionRule never
team modify lead collisionRule never
team modify manager collisionRule never
team modify pc_role collisionRule never
team modify cr collisionRule never

scoreboard objectives add cosmetics_punch dummy {"text":"Selected Punch Effect"}
scoreboard objectives add punch_animation dummy {"text":"Punch Effects Animation Timer"}

team add collision
team modify collision collisionRule never


##Random objective
scoreboard objectives add random dummy

##crossbow objectives
scoreboard objectives add crossbow_id dummy

scoreboard objectives add arrow_delay dummy

scoreboard objectives add arrow_damage dummy

scoreboard objectives add quiver dummy

scoreboard objectives add shoot_crossbow minecraft.used:minecraft.crossbow

##zombie objectives
scoreboard objectives add enemy_spawn_time dummy

scoreboard objectives add enemy_health dummy

scoreboard objectives add enemy_max_health dummy

scoreboard objectives add enemy_loot_table dummy

##calculate objective
scoreboard objectives add calculate dummy
scoreboard objectives add calculate_2 dummy

##Death timer
scoreboard objectives add death_timer dummy

team add game
team modify game color green
team modify game friendlyFire false

team add fallen
team modify fallen color yellow
team modify fallen prefix [{"text":"☽ ","color":"gold"}]


team add dead
team modify dead color dark_red

team add spectator
team modify spectator color white
team modify spectator friendlyFire false
team modify spectator prefix [{"text":"[","color":"gray","bold":true},{"text":"SPEC","color":"white","bold":false},{"text":"] ","color":"gray","bold":true}]



team add won
team modify won color green

##Chest
setblock 0 1 0 chest

##Enemy team
team add enemy
team modify enemy color red
team modify enemy friendlyFire false
team modify enemy collisionRule never

##Purchasing objectives.
scoreboard objectives add price_left dummy
scoreboard objectives add price_increment dummy

##Drop crossbow objective
scoreboard objectives add try_purchase minecraft.custom:minecraft.drop




##bossbar objective
scoreboard objectives add bossbar_time dummy

##storing reload delay when we shoot our crossbow
scoreboard objectives add store_reload dummy



##Difficulty
difficulty hard

##Animation objective
scoreboard objectives add animation dummy

##Upgrade
scoreboard objectives add possible_upgrade dummy

##id objective
scoreboard objectives add id dummy

##streak objective (used for conduction crossbow)
scoreboard objectives add streak dummy

##burning timer
scoreboard objectives add burning_timer dummy

##burning damage
scoreboard objectives add burning_times dummy

##Attack function
scoreboard objectives add attack dummy

##Attack function
scoreboard objectives add attack2 dummy

##Times shot crossbow (it's reset at the start of the game and when specific crossbows are shot.)
scoreboard objectives add times_shot dummy

##Loot multiplier
scoreboard objectives add loot_multiplier dummy

##Loot multiplier remainder
scoreboard objectives add loot_remainder dummy

##Loot multiplier remainder
scoreboard objectives add revive_remainder dummy

##actual revive multiplier
scoreboard objectives add b_revive_time dummy

##Additional mob damage
scoreboard objectives add extra_damage dummy

##Timer for how long that extra damage lasts
scoreboard objectives add e_damage_timer dummy

##targetting crossbow objective
scoreboard objectives add targetting_id dummy
scoreboard objectives add targetting_dmg dummy

##spontaneous crossbow objective
scoreboard objectives add spontaneous_time dummy

##
scoreboard objectives add life_kills minecraft.custom:mob_kills

##
scoreboard objectives add get_kill minecraft.custom:mob_kills

##new treasure delay
scoreboard objectives add action_bar_delay dummy

##new treasure amt
scoreboard objectives add new_treasure dummy
scoreboard objectives add remove_treasure dummy

##store objectives
scoreboard objectives add item_price dummy
scoreboard objectives add item_quantity dummy

##armor objective
scoreboard objectives add armor dummy

scoreboard objectives add death_pos_x dummy
scoreboard objectives add death_pos_y dummy
scoreboard objectives add death_pos_z dummy

##health objective
scoreboard objectives add health health [{"text":"❤","color":"red"}]

##yellow team
team add yellow
team modify yellow color yellow
##aqua team
team add aqua
team modify aqua color aqua

##red team
team add red
team modify red color red

##pink team team
team add light_purple
team modify light_purple color light_purple

##blue team
team add blue
team modify blue color blue

##drop objective
scoreboard objectives add drop minecraft.custom:drop

##revive objectives
scoreboard objectives add revive_progress dummy
scoreboard objectives add revive_compare dummy
scoreboard objectives add revive_time dummy
scoreboard objectives add revive_second dummy

scoreboard objectives add sound dummy

##shoot bow obj
scoreboard objectives add shoot_bow minecraft.used:minecraft.bow

##dead timer
scoreboard objectives add respawn_timer dummy

##particle obj
scoreboard objectives add dead_particle dummy


##delayed spectator things
scoreboard objectives add spectator_delay dummy


##stat boosts
scoreboard objectives add boost_health dummy
scoreboard objectives add boost_quiver dummy
scoreboard objectives add boost_treasure dummy
scoreboard objectives add boost_damage dummy
scoreboard objectives add boost_speed dummy
scoreboard objectives add boost_revive dummy

# stat boost mastery
scoreboard objectives add mastery_health dummy
scoreboard objectives add mastery_quiver dummy
scoreboard objectives add mastery_treasure dummy
scoreboard objectives add mastery_damage dummy
scoreboard objectives add mastery_speed dummy
scoreboard objectives add mastery_revive dummy

# damage obj
scoreboard objectives add b_damage dummy

##stat colors

scoreboard objectives add color dummy
scoreboard objectives add new_color dummy
scoreboard players set $65536 number 65536
scoreboard players set $256 number 256

scoreboard objectives add colors_in_armor dummy
scoreboard objectives add colors_for_armor dummy

scoreboard objectives add damage_taken minecraft.custom:damage_taken


###Utility objectives
##drop key
scoreboard objectives add drop_key minecraft.dropped:minecraft.tripwire_hook

##health booster delay
scoreboard objectives add booster_delay dummy

##extra details delay
scoreboard objectives add desc_delay dummy

##
scoreboard objectives add resetting dummy

# day time
scoreboard objectives add day_time dummy

##Time
time set 18000
scoreboard players set $time day_time 18000
scoreboard players set $target_time day_time 18000
schedule clear game:day_time/recursive_add_time

##killing lobby die things
tp @e[tag=lobby_die] 0 0 0
kill @e[tag=lobby_die]

##Lobby nameplates.
summon area_effect_cloud -2 93 24 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand -2 0 24 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["O","p","t","i","o","n","s"],current_colored:[]}}]}


summon area_effect_cloud 2 93 87.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand 2 0 87.0 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["P","a","r","k","o","u","r"],current_colored:[]}}]}

summon area_effect_cloud 12 93 25 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand 12 0 25 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["C","r","e","d","i","t","s"],current_colored:[]}}]}

summon area_effect_cloud -13 82.5 53 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand -13 0 53 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["F","i","n","i","s","h"],current_colored:[]}}]}

summon area_effect_cloud -2 92 28 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand -2 0 28 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["M","e","n","u"],current_colored:[]}}]}

summon area_effect_cloud 0 94 29 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand 0 0 29 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["S","t","a","r","t"],current_colored:[]}}]}

summon area_effect_cloud 7 92.75 26 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand 7 0 26 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["T","u","t","o","r","i","a","l"],current_colored:[]}}]}

summon area_effect_cloud 15 84.5 -78 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","lobby_text"],CustomNameVisible:1b}
summon armor_stand 15 0 -78 {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["lobby_die","lobby_text_marker"],CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["L","o","b","b","y"],current_colored:[]}}]}



##obj
scoreboard objectives add nameplate_delay dummy

##drop tipped arrow obj
scoreboard objectives add end_parkour minecraft.dropped:minecraft.tipped_arrow

##drop compass
scoreboard objectives add drop_compass minecraft.dropped:minecraft.compass

##parkour timer
scoreboard objectives add parkour_time dummy
scoreboard objectives add parkour_start dummy

##highscore
scoreboard objectives add parkour_score dummy

##ender chest objectives
scoreboard objectives add open_echest minecraft.custom:open_enderchest
scoreboard objectives add screen dummy
scoreboard objectives add click dummy

##Prefix
scoreboard objectives add prefix dummy

##Leaderboard pos
scoreboard objectives add leaderboard_pos dummy

##Leaderboard summons
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["parkour_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=parkour_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3
scoreboard players set @e[type=armor_stand,tag=parkour_leaderboard] parkour_score 1000000000

##timer
scoreboard objectives add castle_time dummy

##highscore
scoreboard objectives add castle_score dummy
scoreboard objectives add castle_difficult dummy


summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=castle_leaderboard] castle_score 1000000000

##timer
scoreboard objectives add kingdom_time dummy

##highscore
scoreboard objectives add kingdom_score dummy
scoreboard objectives add kingdom_diff dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=kingdom_leaderboard] kingdom_score 1000000000


##Stats
scoreboard objectives add global_games dummy
scoreboard objectives add global_wins dummy
scoreboard objectives add global_shots dummy
scoreboard objectives add global_hits dummy
scoreboard objectives add global_accuracy dummy
scoreboard objectives add global_kills dummy
scoreboard objectives add global_treasure dummy
scoreboard objectives add global_spent dummy
scoreboard objectives add global_difficult dummy

scoreboard objectives add global_fire dummy
scoreboard objectives add global_water dummy
scoreboard objectives add global_earth dummy
scoreboard objectives add global_air dummy
scoreboard objectives add global_ice dummy
scoreboard objectives add global_lightning dummy
scoreboard objectives add global_nature dummy
scoreboard objectives add global_darkness dummy
scoreboard objectives add global_metal dummy

scoreboard objectives add global_punch dummy


scoreboard objectives add global_falls dummy
scoreboard objectives add global_revives dummy
##dropping the ready books
scoreboard objectives add drop_ready_book minecraft.dropped:minecraft.knowledge_book

##Journal kill tracking
scoreboard objectives add j_zombie dummy
scoreboard objectives add j_spider dummy
scoreboard objectives add j_knight dummy
scoreboard objectives add j_brute dummy
scoreboard objectives add j_leaper dummy
scoreboard objectives add j_skeleton dummy
scoreboard objectives add j_witch dummy
scoreboard objectives add j_husk dummy
scoreboard objectives add j_evoker dummy
scoreboard objectives add j_vex dummy
scoreboard objectives add j_hooded dummy
scoreboard objectives add j_shopkeeper dummy

scoreboard objectives add j_spider_queen dummy
scoreboard objectives add j_fiery_fiend dummy
scoreboard objectives add j_furious_fungus dummy
scoreboard objectives add j_polar_family dummy
scoreboard objectives add j_daring_dancer dummy
scoreboard objectives add j_royal_archer dummy
scoreboard objectives add j_static_split dummy
scoreboard objectives add j_gravedigger dummy
scoreboard objectives add j_ender_king dummy
scoreboard objectives add j_scary_swarm dummy

scoreboard objectives add j_skelrath dummy
scoreboard objectives add j_viscean dummy
scoreboard objectives add j_e_guardian dummy
scoreboard objectives add j_s_guardian dummy
scoreboard objectives add j_nixeous dummy
scoreboard objectives add j_jockey dummy
scoreboard objectives add j_molten_titan dummy
scoreboard objectives add j_magma_cube dummy
scoreboard objectives add j_forest_essence dummy

scoreboard objectives add j_witch_shop dummy
scoreboard objectives add j_dangerous_duo dummy
scoreboard objectives add j_gallant_golem dummy
scoreboard objectives add j_erodus dummy
scoreboard objectives add j_block dummy
scoreboard objectives add j_vindicator_sho dummy
scoreboard objectives add j_blacksmith dummy
scoreboard objectives add j_tower_archer dummy
scoreboard objectives add j_cobalt_king dummy
scoreboard objectives add j_king_guard dummy
scoreboard objectives add j_torthar dummy
scoreboard objectives add j_gold_guard dummy
scoreboard objectives add j_tutorial_enemy dummy


scoreboard objectives add j_zombie_deaths dummy
scoreboard objectives add j_spider_deaths dummy
scoreboard objectives add j_knight_deaths dummy

##Lobby id
scoreboard objectives remove lobby_id
scoreboard objectives add lobby_id dummy

##Summoning the rabbits
kill @e[type=rabbit,x=0,y=66,z=0,distance=..500]
summon rabbit -10 87.5 34 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -10 83.5 38 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -10 79.5 42 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -10 75.5 46 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -10 83.5 38 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -6 87.5 34 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -6 83.5 38 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -6 79.5 42 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -6 75.5 46 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit -6 83.5 38 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 90.5 34 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 89.5 40 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 89.5 45 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 88.5 52 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 88.5 56 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 88.5 60 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 89.5 67 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 2 89.5 72 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 90.5 34 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 89.5 40 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 89.5 45 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 88.5 52 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 88.5 56 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 88.5 60 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 89.5 67 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}
summon rabbit 6 89.5 72 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:100000000,Amplifier:0,ShowParticles:false}],Tags:["lobby_die"]}

team join collision @e[type=rabbit,tag=lobby_die]

function lobby:leads/reset

##Spin
summon area_effect_cloud 0 0 0 {Tags:["spin","lobby_die"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon area_effect_cloud 0 0 0 {Tags:["spin_2","lobby_die"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

##Boss objective
scoreboard objectives add boss dummy
scoreboard players set $force_boss boss -1


##Creating teams
team add title_0
team add title_1
team add title_2
team add title_3
team add title_4
team add title_5
team add title_6
team add title_7
team add title_8
team add title_9
team add title_10
team add title_11
team add title_12
team add title_13
team add title_14
team add title_15
team add title_16
team add title_17
team add title_18
team add title_19
team add title_20
team add title_21
team add title_22
team add title_23
team add title_24
team add title_25
team add title_26
team add title_27
team add title_28
team add title_29
team add title_30
team add title_31
team add title_32
team add title_33
team add title_34
team add title_35
team add title_36
team add title_37
team add title_38
team add title_39
team add title_40
team add title_41
team add title_42
team add title_43
team add title_44
team add title_45
team add title_46
team add title_47
team add title_48
team add title_49
team add title_50
team add title_51
team add title_52
team add title_53
team add title_54
team add title_55
team add title_56
team add title_57
team add title_58
team add title_59
team add title_60
team add title_61
team add title_62
team add title_63
team add title_64

team add title_elemental
team add title_journal
team add title_chosen_one

team modify title_0 color dark_green
team modify title_1 color dark_green
team modify title_2 color dark_green
team modify title_3 color dark_green
team modify title_4 color dark_green
team modify title_5 color dark_green
team modify title_6 color dark_green
team modify title_7 color dark_green
team modify title_8 color dark_green
team modify title_9 color dark_green
team modify title_10 color dark_green
team modify title_11 color dark_green
team modify title_12 color dark_green
team modify title_13 color dark_green
team modify title_14 color dark_green
team modify title_15 color dark_green
team modify title_16 color dark_green
team modify title_17 color dark_green
team modify title_18 color dark_green
team modify title_19 color dark_green
team modify title_20 color dark_green
team modify title_21 color dark_green
team modify title_22 color dark_green
team modify title_23 color dark_green
team modify title_24 color dark_green
team modify title_25 color dark_green
team modify title_26 color dark_green
team modify title_27 color dark_green
team modify title_28 color dark_green
team modify title_29 color dark_green
team modify title_30 color dark_green
team modify title_31 color dark_green
team modify title_32 color dark_green
team modify title_33 color dark_green
team modify title_34 color dark_green
team modify title_35 color dark_green
team modify title_36 color dark_green
team modify title_37 color dark_green
team modify title_38 color dark_green
team modify title_39 color dark_green
team modify title_40 color dark_green
team modify title_41 color dark_green
team modify title_42 color dark_green
team modify title_43 color dark_green
team modify title_44 color dark_green
team modify title_45 color dark_green
team modify title_46 color dark_green
team modify title_47 color dark_green
team modify title_48 color dark_green
team modify title_49 color dark_green
team modify title_50 color dark_green
team modify title_51 color dark_green
team modify title_52 color dark_green
team modify title_53 color dark_green
team modify title_54 color dark_green
team modify title_55 color dark_green
team modify title_56 color dark_green
team modify title_57 color dark_green
team modify title_58 color dark_green
team modify title_59 color dark_green
team modify title_60 color dark_green
team modify title_61 color dark_green
team modify title_62 color dark_green
team modify title_63 color dark_green
team modify title_64 color dark_green

team modify title_elemental color dark_green
team modify title_journal color dark_green
team modify title_chosen_one color dark_green

team modify title_0 collisionRule never
team modify title_1 collisionRule never
team modify title_2 collisionRule never
team modify title_3 collisionRule never
team modify title_4 collisionRule never
team modify title_5 collisionRule never
team modify title_6 collisionRule never
team modify title_7 collisionRule never
team modify title_8 collisionRule never
team modify title_9 collisionRule never
team modify title_10 collisionRule never
team modify title_11 collisionRule never
team modify title_12 collisionRule never
team modify title_13 collisionRule never
team modify title_14 collisionRule never
team modify title_15 collisionRule never
team modify title_16 collisionRule never
team modify title_17 collisionRule never
team modify title_18 collisionRule never
team modify title_19 collisionRule never
team modify title_20 collisionRule never
team modify title_21 collisionRule never
team modify title_22 collisionRule never
team modify title_23 collisionRule never
team modify title_24 collisionRule never
team modify title_25 collisionRule never
team modify title_26 collisionRule never
team modify title_27 collisionRule never
team modify title_28 collisionRule never
team modify title_29 collisionRule never
team modify title_30 collisionRule never
team modify title_31 collisionRule never
team modify title_32 collisionRule never
team modify title_33 collisionRule never
team modify title_34 collisionRule never
team modify title_35 collisionRule never
team modify title_36 collisionRule never
team modify title_37 collisionRule never
team modify title_38 collisionRule never
team modify title_39 collisionRule never
team modify title_40 collisionRule never
team modify title_41 collisionRule never
team modify title_42 collisionRule never
team modify title_43 collisionRule never
team modify title_44 collisionRule never
team modify title_45 collisionRule never
team modify title_46 collisionRule never
team modify title_47 collisionRule never
team modify title_48 collisionRule never
team modify title_49 collisionRule never
team modify title_50 collisionRule never
team modify title_51 collisionRule never
team modify title_52 collisionRule never
team modify title_53 collisionRule never
team modify title_54 collisionRule never
team modify title_55 collisionRule never
team modify title_56 collisionRule never
team modify title_57 collisionRule never
team modify title_58 collisionRule never
team modify title_59 collisionRule never
team modify title_60 collisionRule never
team modify title_61 collisionRule never
team modify title_62 collisionRule never
team modify title_63 collisionRule never
team modify title_64 collisionRule never

team modify title_elemental collisionRule never
team modify title_journal collisionRule never
team modify title_chosen_one collisionRule never


team modify title_0 suffix [{"text":" the ","color": "gray"},{"text":"Arbalist","color":"#6a430f","bold":true}]
team modify title_1 suffix [{"text":" the ","color": "gray"},{"text":"Flaming","color":"#f1390e","bold":true}]
team modify title_2 suffix [{"text":" the ","color": "gray"},{"text":"Soaked","color":"#0e8ef1","bold":true}]
team modify title_3 suffix [{"text":" the ","color": "gray"},{"text":"Sturdy","color":"#b27565","bold":true}]
team modify title_4 suffix [{"text":" the ","color": "gray"},{"text":"Breeze","color":"#d6d6d6","bold":true}]
team modify title_5 suffix [{"text":" the ","color": "gray"},{"text":"Cold","color":"#6fe6ff","bold":true}]
team modify title_6 suffix [{"text":" the ","color": "gray"},{"text":"Spark","color":"#f0d44f","bold":true}]
team modify title_7 suffix [{"text":" the ","color": "gray"},{"text":"Seedling","color":"#17b00c","bold":true}]
team modify title_8 suffix [{"text":" the ","color": "gray"},{"text":"Gloomy","color":"#3e2e51","bold":true}]
team modify title_9 suffix [{"text":" the ","color": "gray"},{"text":"Durable","color":"#544c4c","bold":true}]

team modify title_10 suffix [{"text":" the ","color": "gray"},{"text":"Molten","color":"#f1390e","bold":true}]
team modify title_11 suffix [{"text":" the ","color": "gray"},{"text":"Drenched","color":"#0e8ef1","bold":true}]
team modify title_12 suffix [{"text":" the ","color": "gray"},{"text":"Immovable","color":"#b27565","bold":true}]
team modify title_13 suffix [{"text":" the ","color": "gray"},{"text":"Cyclone","color":"#d6d6d6","bold":true}]
team modify title_14 suffix [{"text":" the ","color": "gray"},{"text":"Frozen","color":"#6fe6ff","bold":true}]
team modify title_15 suffix [{"text":" the ","color": "gray"},{"text":"Charged","color":"#f0d44f","bold":true}]
team modify title_16 suffix [{"text":" the ","color": "gray"},{"text":"Verdant","color":"#17b00c","bold":true}]
team modify title_17 suffix [{"text":" the ","color": "gray"},{"text":"Dreary","color":"#3e2e51","bold":true}]
team modify title_18 suffix [{"text":" the ","color": "gray"},{"text":"Resistant","color":"#544c4c","bold":true}]

team modify title_19 suffix [{"text":" the ","color": "gray"},{"text":"Boiled","color":"#b0b0b0","bold":true}]
team modify title_20 suffix [{"text":" the ","color": "gray"},{"text":"Rushing","color":"#26dbcc","bold":true}]
team modify title_21 suffix [{"text":" the ","color": "gray"},{"text":"Aphanitic","color":"#3d3e4c","bold":true}]
team modify title_22 suffix [{"text":" the ","color": "gray"},{"text":"Inventor","color":"#92906b","bold":true}]
team modify title_23 suffix [{"text":" the ","color": "gray"},{"text":"Chilled","color":"#bdfbff","bold":true}]
team modify title_24 suffix [{"text":" the ","color": "gray"},{"text":"Heated","color":"#ae6a6d","bold":true}]
team modify title_25 suffix [{"text":" the ","color": "gray"},{"text":"Atomic","color":"#38e310","bold":true}]
team modify title_26 suffix [{"text":" the ","color": "gray"},{"text":"Overcast","color":"#586060","bold":true}]
team modify title_27 suffix [{"text":" the ","color": "gray"},{"text":"Rugged","color":"#4c9490","bold":true}]

team modify title_28 suffix [{"text":" the ","color": "gray"},{"text":"Volatile","color":"#f1390e","bold":true}]
team modify title_29 suffix [{"text":" the ","color": "gray"},{"text":"Aquatic","color":"#0e8ef1","bold":true}]
team modify title_30 suffix [{"text":" the ","color": "gray"},{"text":"Buried","color":"#b27565","bold":true}]
team modify title_31 suffix [{"text":" the ","color": "gray"},{"text":"Heavenly","color":"#d6d6d6","bold":true}]
team modify title_32 suffix [{"text":" the ","color": "gray"},{"text":"Frigid","color":"#6fe6ff","bold":true}]
team modify title_33 suffix [{"text":" the ","color": "gray"},{"text":"Surging","color":"#f0d44f","bold":true}]
team modify title_34 suffix [{"text":" the ","color": "gray"},{"text":"Lively","color":"#17b00c","bold":true}]
team modify title_35 suffix [{"text":" the ","color": "gray"},{"text":"Sunken","color":"#3e2e51","bold":true}]
team modify title_36 suffix [{"text":" the ","color": "gray"},{"text":"Unbreakable","color":"#544c4c","bold":true}]

team modify title_37 suffix [{"text":" the ","color": "gray"},{"text":"Dense","color":"#3b2754","bold":true}]
team modify title_38 suffix [{"text":" the ","color": "gray"},{"text":"Harsh","color":"#7bc7bf","bold":true}]
team modify title_39 suffix [{"text":" the ","color": "gray"},{"text":"Gilded","color":"#fdf55f","bold":true}]
team modify title_40 suffix [{"text":" the ","color": "gray"},{"text":"Raging","color":"#b6800b","bold":true}]
team modify title_41 suffix [{"text":" the ","color": "gray"},{"text":"Extraterrestrial","color":"#787369","bold":true}]
team modify title_42 suffix [{"text":" the ","color": "gray"},{"text":"Eclipsed","color":"#364034","bold":true}]
team modify title_43 suffix [{"text":" the ","color": "gray"},{"text":"Fragmented","color":"#c8c8c8","bold":true}]
team modify title_44 suffix [{"text":" the ","color": "gray"},{"text":"Engineer","color":"#92947c","bold":true}]
team modify title_45 suffix [{"text":" the ","color": "gray"},{"text":"Numb","color":"#108c88","bold":true}]


team modify title_46 suffix [{"text":" the ","color": "gray"},{"text":"Fallen","color":"#f9f9f9","bold":true}]
team modify title_47 suffix [{"text":" the ","color": "gray"},{"text":"Obscured","color":"#feeefa","bold":true}]
team modify title_48 suffix [{"text":" the ","color": "gray"},{"text":"Storm","color":"#454536","bold":true}]
team modify title_49 suffix [{"text":" the ","color": "gray"},{"text":"Carver","color":"#89e8de","bold":true}]
team modify title_50 suffix [{"text":" the ","color": "gray"},{"text":"Impulsive","color":"#7af08b","bold":true}]
team modify title_51 suffix [{"text":" the ","color": "gray"},{"text":"Excessive","color":"#7cd8ff","bold":true}]
team modify title_52 suffix [{"text":" the ","color": "gray"},{"text":"Swift","color":"#7e6339","bold":true}]
team modify title_53 suffix [{"text":" the ","color": "gray"},{"text":"Wintry","color":"#618782","bold":true}]
team modify title_54 suffix [{"text":" the ","color": "gray"},{"text":"Magmatic","color":"#b74d13","bold":true}]

team modify title_55 suffix [{"text":" the ","color": "gray"},{"text":"Flooded","color":"#0024ff","bold":true}]
team modify title_56 suffix [{"text":" the ","color": "gray"},{"text":"Bleak","color":"#bdd4df","bold":true}]
team modify title_57 suffix [{"text":" the ","color": "gray"},{"text":"Luminous","color":"#ce00e6","bold":true}]
team modify title_58 suffix [{"text":" the ","color": "gray"},{"text":"Descending","color":"#784900","bold":true}]
team modify title_59 suffix [{"text":" the ","color": "gray"},{"text":"Hazy","color":"#c1ffed","bold":true}]
team modify title_60 suffix [{"text":" the ","color": "gray"},{"text":"Indestructable","color":"#4c4143","bold":true}]
team modify title_61 suffix [{"text":" the ","color": "gray"},{"text":"Negative","color":"#46067d","bold":true}]
team modify title_62 suffix [{"text":" the ","color": "gray"},{"text":"Withered","color":"#4cab1d","bold":true}]
team modify title_63 suffix [{"text":" the ","color": "gray"},{"text":"Sweltered","color":"#b33300","bold":true}]

team modify title_elemental suffix [{"text":" the ","color": "gray"},{"text":"E","color":"#f1390e","bold":true},{"text":"l","color":"#0e8ef1","bold":true},{"text":"e","color":"#b27565","bold":true},{"text":"m","color":"#d6d6d6","bold":true},{"text":"e","color":"#6fe6ff","bold":true},{"text":"n","color":"#f0d44f","bold":true},{"text":"t","color":"#17b00c","bold":true},{"text":"a","color":"#3e2e51","bold":true},{"text":"l","color":"#544c4c","bold":true}]
team modify title_journal suffix [{"text":" the ","color": "#d8d8d8"},{"text":"C","color":"white","bold":true},{"text":"h","color":"#d8d8d8","bold":true},{"text":"r","color":"white","bold":true},{"text":"o","color":"#d8d8d8","bold":true},{"text":"n","color":"white","bold":true},{"text":"i","color":"#d8d8d8","bold":true},{"text":"c","color":"white","bold":true},{"text":"l","color":"#d8d8d8","bold":true},{"text":"e","color":"white","bold":true},{"text":"r","color":"#d8d8d8","bold":true}]
team modify title_chosen_one suffix [{"text":" the ","color": "gray"},{"text":"Chosen ","color":"red","bold":true,"underlined":true},{"text":"One","color":"gold","bold":true,"underlined":true},{"text":" ","bold":false}]


##Credits
scoreboard objectives add credits dummy


##Bossbar
bossbar remove minecraft:lobby
bossbar add minecraft:lobby [{"text":"| ","obfuscated":true,"color":"gold"},{"text":"Dungeon ","obfuscated":false,"bold":true,"color":"dark_green"},{"text":"of the ","obfuscated":false,"bold":true,"color":"white"},{"text":"Arbalist ","obfuscated":false,"bold":true,"color":"gold"},{"text":"- ","obfuscated":false,"color":"gray"},{"text":"By the ","obfuscated":false,"color":"white"},{"text":"Command ","obfuscated":false,"bold":true,"color":"aqua"},{"text":"Realm ","obfuscated":false,"bold":true,"color":"dark_aqua"},{"text": "Team","obfuscated":false,"color":"white"},{"text":" |","obfuscated":true,"color":"gold"}]
bossbar set minecraft:lobby style progress
bossbar set minecraft:lobby color green
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##Resetting last boss
scoreboard players set $last_boss boss -1

##Spawnpoint wave id
scoreboard objectives add wave_id dummy

##Crossbow tier
scoreboard objectives add reached_tier dummy

##Spawn delay
scoreboard objectives add spawn_delay dummy

##Barriers where mobs will spawn and wait a second
fill 11 0 -1 9 3 1 barrier hollow


setworldspawn 0 0 0

##Tutorial
function lobby:tutorial/summon


##Particle pos
scoreboard objectives add particle_pos dummy


##Teleporter aec
summon area_effect_cloud 7 91 26 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","tutorial_teleporter","tutorial_particles"]}
scoreboard players set @e[type=area_effect_cloud,tag=tutorial_teleporter] particle_pos 0

summon area_effect_cloud 15 83 -78 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["lobby_die","tutorial_teleporter_2","tutorial_particles"]}
scoreboard players set @e[type=area_effect_cloud,tag=tutorial_teleporter_2] particle_pos 0

##Game id
scoreboard objectives add game_id dummy

##Objective
scoreboard objectives add objective dummy

scoreboard objectives add spawn_limit dummy

scoreboard objectives add conversion_timer dummy

function completionist:setup

scoreboard objectives add reload_percent dummy

scoreboard objectives add radioactive_miss dummy

# adding objective to see if player is dangling over the edge
scoreboard objectives add player_pos_check dummy

scoreboard objectives add wind dummy
scoreboard objectives add wind_delay dummy

# leveling system
scoreboard objectives add level dummy
scoreboard objectives add xp_requirement dummy
scoreboard objectives add xp dummy
scoreboard objectives add level_animation dummy

# armor trims
scoreboard objectives add cosmetics_trim dummy
scoreboard objectives add cosmetics_trim_type dummy

# intro text
scoreboard objectives add intro_text dummy


# new journal entries
scoreboard objectives add j_piglinh dummy
scoreboard objectives add j_plague dummy
scoreboard objectives add j_bomber dummy
scoreboard objectives add j_bandit dummy
scoreboard objectives add j_w_knight dummy
scoreboard objectives add j_s_knight dummy
scoreboard objectives add j_w_brute dummy
scoreboard objectives add j_ghost dummy
scoreboard objectives add j_w_leaper dummy
scoreboard objectives add j_wind_thief dummy
scoreboard objectives add j_rogue dummy
scoreboard objectives add j_lobber dummy
scoreboard objectives add j_spawner dummy
scoreboard objectives add j_candlehead dummy
scoreboard objectives add j_phantom dummy
scoreboard objectives add j_keeper dummy
scoreboard objectives add j_fallen dummy
scoreboard objectives add j_mage dummy

scoreboard objectives add use_shield minecraft.used:minecraft.shield
scoreboard objectives add fake_strength dummy
scoreboard objectives add modifier_random dummy
scoreboard objectives add trial_firetrail_cooldown dummy

scoreboard objectives add trial_collector dummy
# New leaderboard objectives

scoreboard objectives add leaderboard_hard_wave dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=hard_leaderboard] leaderboard_hard_wave 1000000000



scoreboard objectives add leaderboard_super_hard_wave dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=super_hard_leaderboard] leaderboard_super_hard_wave 1000000000



scoreboard objectives add leaderboard_hardcore_wave dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=hardcore_leaderboard] leaderboard_hardcore_wave 1000000000



scoreboard objectives add leaderboard_nightmare_wave dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=nightmare_leaderboard] leaderboard_nightmare_wave 1000000000



scoreboard objectives add leaderboard_hard_wave2 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=hard_leaderboard2] leaderboard_hard_wave2 1000000000



scoreboard objectives add leaderboard_super_hard_wave2 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["super_hard_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=super_hard_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=super_hard_leaderboard2] leaderboard_super_hard_wave2 1000000000



scoreboard objectives add leaderboard_hardcore_wave2 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["hardcore_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=hardcore_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=hardcore_leaderboard2] leaderboard_hardcore_wave2 1000000000



scoreboard objectives add leaderboard_nightmare_wave2 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["nightmare_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=nightmare_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=nightmare_leaderboard2] leaderboard_nightmare_wave2 1000000000



scoreboard objectives add castle_score2 dummy
scoreboard objectives add castle_difficult2 dummy


summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=castle_leaderboard2] castle_score2 1000000000



scoreboard objectives add kingdom_score2 dummy
scoreboard objectives add kingdom_diff2 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard2","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard2] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=kingdom_leaderboard2] kingdom_score2 1000000000



scoreboard objectives add castle_score3 dummy
scoreboard objectives add castle_difficult3 dummy


summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=castle_leaderboard3] castle_score3 1000000000



scoreboard objectives add kingdom_score3 dummy
scoreboard objectives add kingdom_diff3 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard3","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard3] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=kingdom_leaderboard3] kingdom_score3 1000000000



scoreboard objectives add castle_score4 dummy
scoreboard objectives add castle_difficult4 dummy


summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["castle_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=castle_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=castle_leaderboard4] castle_score4 1000000000



scoreboard objectives add kingdom_score4 dummy
scoreboard objectives add kingdom_diff4 dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["kingdom_leaderboard4","lobby_die"]}
execute as @e[type=armor_stand,tag=kingdom_leaderboard4] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=kingdom_leaderboard4] kingdom_score4 1000000000



scoreboard objectives add gamesplay_score dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gamesplay_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=gamesplay_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gamesplay_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=gamesplay_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gamesplay_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=gamesplay_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=gamesplay_leaderboard] gamesplay_score 1000000000



scoreboard objectives add accuracy_score dummy

summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["accuracy_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=accuracy_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["accuracy_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=accuracy_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["accuracy_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=accuracy_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=accuracy_leaderboard] accuracy_score 1000000000


scoreboard objectives add default_dota_wins dummy


summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dungeon_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=dungeon_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 1
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dungeon_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=dungeon_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 2
summon armor_stand 0 15 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dungeon_leaderboard","lobby_die"]}
execute as @e[type=armor_stand,tag=dungeon_leaderboard] at @s unless score @s leaderboard_pos matches 0.. run scoreboard players set @s leaderboard_pos 3

scoreboard players set @e[type=armor_stand,tag=dungeon_leaderboard] default_dota_wins 1000000000

scoreboard objectives add save_scramble dummy
scoreboard objectives add wave_reached dummy

# winning trial objectives

scoreboard objectives add win_trial_default dummy
scoreboard objectives add win_trial_shopless dummy
scoreboard objectives add win_trial_poverty dummy
scoreboard objectives add win_trial_firetrail dummy
scoreboard objectives add win_trial_four_in_the_quiver dummy
scoreboard objectives add win_trial_gloom dummy
scoreboard objectives add win_trial_collector dummy
scoreboard objectives add win_trial_detonation dummy
scoreboard objectives add win_trial_scramble dummy
scoreboard objectives add win_trial_random dummy

scoreboard objectives add modifiers dummy
scoreboard players set $bouncy_arrows modifiers 0
scoreboard players set $random_crossbow modifiers 0
scoreboard players set $enemy_per_wave modifiers 0
scoreboard players set $volition modifiers 0
scoreboard players set $speedrun modifiers 0
scoreboard players set $random_items modifiers 0
scoreboard players set $player_swap modifiers 0
scoreboard players set $healthshare modifiers 0

scoreboard objectives add last_health dummy


##Journal death tracking
scoreboard objectives add j_zombie_deaths dummy
scoreboard objectives add j_spider_deaths dummy
scoreboard objectives add j_knight_deaths dummy
scoreboard objectives add j_brute_deaths dummy
scoreboard objectives add j_leaper_deaths dummy
scoreboard objectives add j_skeleton_deaths dummy
scoreboard objectives add j_witch_deaths dummy
scoreboard objectives add j_husk_deaths dummy
scoreboard objectives add j_evoker_deaths dummy
scoreboard objectives add j_vex_deaths dummy
scoreboard objectives add j_hooded_deaths dummy
scoreboard objectives add j_shopkeeper_deaths dummy

scoreboard objectives add j_spider_queen_deaths dummy
scoreboard objectives add j_fiery_fiend_deaths dummy
scoreboard objectives add j_furious_fungus_deaths dummy
scoreboard objectives add j_polar_family_deaths dummy
scoreboard objectives add j_daring_dancer_deaths dummy
scoreboard objectives add j_royal_archer_deaths dummy
scoreboard objectives add j_static_split_deaths dummy
scoreboard objectives add j_gravedigger_deaths dummy
scoreboard objectives add j_ender_king_deaths dummy
scoreboard objectives add j_scary_swarm_deaths dummy

scoreboard objectives add j_skelrath_deaths dummy
scoreboard objectives add j_viscean_deaths dummy
scoreboard objectives add j_e_guardian_deaths dummy
scoreboard objectives add j_s_guardian_deaths dummy
scoreboard objectives add j_nixeous_deaths dummy
scoreboard objectives add j_jockey_deaths dummy
scoreboard objectives add j_molten_titan_deaths dummy
scoreboard objectives add j_magma_cube_deaths dummy
scoreboard objectives add j_forest_essence_deaths dummy

scoreboard objectives add j_witch_shop_deaths dummy
scoreboard objectives add j_dangerous_duo_deaths dummy
scoreboard objectives add j_gallant_golem_deaths dummy
scoreboard objectives add j_erodus_deaths dummy
scoreboard objectives add j_block_deaths dummy
scoreboard objectives add j_vindicator_sho_deaths dummy
scoreboard objectives add j_blacksmith_deaths dummy
scoreboard objectives add j_tower_archer_deaths dummy
scoreboard objectives add j_cobalt_king_deaths dummy
scoreboard objectives add j_king_guard_deaths dummy
scoreboard objectives add j_torthar_deaths dummy
scoreboard objectives add j_gold_guard_deaths dummy
scoreboard objectives add j_tutorial_enemy_deaths dummy
