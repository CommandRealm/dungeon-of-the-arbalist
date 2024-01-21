##Called when we get a kill.

# resetting our quiver if we have trial on
execute if entity @s[tag=trial_four_in_the_quiver] run function game:trials/four_in_the_quiver/refill_quiver

scoreboard players reset @s get_kill

##Specific crossbow kill functions
execute if score @s crossbow_id matches 7 run function game:mechanics/get_kill_with_specific/nature
execute if score @s crossbow_id matches 16 run function game:mechanics/get_kill_with_specific/wild
execute if score @s crossbow_id matches 34 run function game:mechanics/get_kill_with_specific/life

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run scoreboard players add @s[tag=!tutorial] global_kills 1
scoreboard players add @s local_kills 1



##Adding our kills
scoreboard players add @s[advancements={journal:kills/zombie=true}] j_zombie 1
scoreboard players add @s[advancements={journal:kills/spider=true}] j_spider 1
scoreboard players add @s[advancements={journal:kills/knight=true}] j_knight 1
scoreboard players add @s[advancements={journal:kills/brute=true}] j_brute 1
scoreboard players add @s[advancements={journal:kills/leaper=true}] j_leaper 1
scoreboard players add @s[advancements={journal:kills/skeleton=true}] j_skeleton 1
scoreboard players add @s[advancements={journal:kills/witch=true}] j_witch 1
scoreboard players add @s[advancements={journal:kills/husk=true}] j_husk 1
scoreboard players add @s[advancements={journal:kills/evoker=true}] j_evoker 1
scoreboard players add @s[advancements={journal:kills/vex=true}] j_vex 1
scoreboard players add @s[advancements={journal:kills/hooded=true}] j_hooded 1
scoreboard players add @s[advancements={journal:kills/shopkeeper=true}] j_shopkeeper 1

# shopkeeper advancement
execute if score $volition game matches 1 if score $wave game matches 42.. unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[advancements={journal:kills/shopkeeper=true}] only advancements:volition/enemy-shopkeeper


scoreboard players add @s[advancements={journal:kills/spider_queen=true}] j_spider_queen 1
scoreboard players add @s[advancements={journal:kills/fiery_fiend=true}] j_fiery_fiend 1
scoreboard players add @s[advancements={journal:kills/furious_fungus=true}] j_furious_fungus 1
scoreboard players add @s[advancements={journal:kills/polar_family=true}] j_polar_family 1
execute if score $mode settings matches 0 run scoreboard players add @s[advancements={journal:kills/daring_dancer=true}] j_daring_dancer 1

scoreboard players add @s[advancements={journal:kills/royal_archer=true}] j_royal_archer 1
scoreboard players add @s[advancements={journal:kills/static_splitters=true}] j_static_split 1
scoreboard players add @s[advancements={journal:kills/gravedigger=true}] j_gravedigger 1
scoreboard players add @s[advancements={journal:kills/ender_king=true}] j_ender_king 1
scoreboard players add @s[advancements={journal:kills/scary_swarm=true}] j_scary_swarm 1
execute if score $mode settings matches 0 run scoreboard players add @s[advancements={journal:kills/skelrath=true}] j_skelrath 1
execute if score $mode settings matches 1 run scoreboard players add @s[advancements={journal:kills/skelrath=true}] j_erodus 1
execute if score $mode settings matches 2 run scoreboard players add @s[advancements={journal:kills/skelrath=true}] j_torthar 1
scoreboard players add @s[advancements={journal:kills/viscean=true}] j_viscean 1
scoreboard players add @s[advancements={journal:kills/exploding_guardian=true}] j_e_guardian 1
scoreboard players add @s[advancements={journal:kills/shield_guardian=true}] j_s_guardian 1
scoreboard players add @s[advancements={journal:kills/nixeous=true}] j_nixeous 1
scoreboard players add @s[advancements={journal:kills/jockey=true}] j_jockey 1
scoreboard players add @s[advancements={journal:kills/molten_titan=true}] j_molten_titan 1
scoreboard players add @s[advancements={journal:kills/magma_cube=true}] j_magma_cube 1
scoreboard players add @s[advancements={journal:kills/essence_of_the_forest=true}] j_forest_essence 1

scoreboard players add @s[advancements={journal:kills/witch_shopkeeper=true}] j_witch_shopkeep 1
execute if score $mode settings matches 1 run scoreboard players add @s[advancements={journal:kills/dangerous_duo=true}] j_dangerous_duo 1
scoreboard players add @s[advancements={journal:kills/gallant_golem=true}] j_gallant_golem 1
scoreboard players add @s[advancements={journal:kills/vindicator_shopkeeper=true}] j_vindicator_sho 1
scoreboard players add @s[advancements={journal:kills/blacksmith=true}] j_blacksmith 1
scoreboard players add @s[advancements={journal:kills/tower_archer=true}] j_tower_archer 1
scoreboard players add @s[advancements={journal:kills/cobalt_king=true}] j_cobalt_king 1
scoreboard players add @s[advancements={journal:kills/cobalt_king_guard=true}] j_king_guard 1
scoreboard players add @s[advancements={journal:kills/golden_guard=true}] j_gold_guard 1

# Volition update
scoreboard players add @s[advancements={journal:kills/piglinh_hoglin=true}] j_piglinh 1
scoreboard players add @s[advancements={journal:kills/piglinh_piglin=true}] j_piglinh 1
scoreboard players add @s[advancements={journal:kills/plague_doctor=true}] j_plague 1
scoreboard players add @s[advancements={journal:kills/bomber=true}] j_bomber 1
scoreboard players add @s[advancements={journal:kills/bandit=true}] j_bandit 1
scoreboard players add @s[advancements={journal:kills/withered_knight=true}] j_w_knight 1
scoreboard players add @s[advancements={journal:kills/skeleton_knight=true}] j_s_knight 1
scoreboard players add @s[advancements={journal:kills/withered_brute=true}] j_w_brute 1
scoreboard players add @s[advancements={journal:kills/ghost=true}] j_ghost 1
scoreboard players add @s[advancements={journal:kills/withered_leaper=true}] j_w_leaper 1
scoreboard players add @s[advancements={journal:kills/wind_thief=true}] j_wind_thief 1
scoreboard players add @s[advancements={journal:kills/rogue=true}] j_rogue 1
scoreboard players add @s[advancements={journal:kills/lobber=true}] j_lobber 1
scoreboard players add @s[advancements={journal:kills/spawner=true}] j_spawner 1
scoreboard players add @s[advancements={journal:kills/candlehead=true}] j_candlehead 1
scoreboard players add @s[advancements={journal:kills/phantom=true}] j_phantom 1
scoreboard players add @s[advancements={journal:kills/keeper=true}] j_keeper 1
scoreboard players add @s[advancements={journal:kills/fallen_arbalist=true}] j_fallen 1
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[advancements={journal:kills/fallen_arbalist=true}] only advancements:volition/enemy-arbalist

scoreboard players add @s[advancements={journal:kills/mage=true}] j_mage 1


# if we have fake strength
execute if score @s fake_strength matches 1.. unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $volition game matches 1.. run advancement grant @s only advancements:volition/item-strength

execute if score $wave_length game matches 1.. unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s[advancements={journal:kills/plague_doctor=true}] only advancements:volition/enemy-plague



##If we killed a miniboss
execute if entity @s[advancements={game:kill_miniboss=true},tag=!tutorial] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only advancements:game-miniboss


##Removing advancements
advancement revoke @s only journal:kills/zombie
advancement revoke @s only journal:kills/spider
advancement revoke @s only journal:kills/knight
advancement revoke @s only journal:kills/brute
advancement revoke @s only journal:kills/leaper
advancement revoke @s only journal:kills/skeleton
advancement revoke @s only journal:kills/witch
advancement revoke @s only journal:kills/husk
advancement revoke @s only journal:kills/evoker
advancement revoke @s only journal:kills/vex
advancement revoke @s only journal:kills/hooded
advancement revoke @s only journal:kills/shopkeeper

advancement revoke @s only journal:kills/spider_queen
advancement revoke @s only journal:kills/fiery_fiend
advancement revoke @s only journal:kills/furious_fungus
advancement revoke @s only journal:kills/polar_family
advancement revoke @s only journal:kills/daring_dancer
advancement revoke @s only journal:kills/royal_archer
advancement revoke @s only journal:kills/static_splitters
advancement revoke @s only journal:kills/gravedigger
advancement revoke @s only journal:kills/ender_king
advancement revoke @s only journal:kills/scary_swarm
advancement revoke @s only journal:kills/skelrath
advancement revoke @s only journal:kills/viscean
advancement revoke @s only journal:kills/exploding_guardian
advancement revoke @s only journal:kills/shield_guardian
advancement revoke @s only journal:kills/nixeous
advancement revoke @s only journal:kills/jockey
advancement revoke @s only journal:kills/molten_titan
advancement revoke @s only journal:kills/magma_cube
advancement revoke @s only journal:kills/essence_of_the_forest

advancement revoke @s only journal:kills/witch_shopkeeper
advancement revoke @s only journal:kills/gallant_golem
advancement revoke @s only journal:kills/erodus
advancement revoke @s only journal:kills/vindicator_shopkeeper
advancement revoke @s only journal:kills/blacksmith
advancement revoke @s only journal:kills/tower_archer
advancement revoke @s only journal:kills/cobalt_king
advancement revoke @s only journal:kills/cobalt_king_guard
advancement revoke @s only journal:kills/golden_guard


advancement revoke @s only journal:kills/piglinh_hoglin
advancement revoke @s only journal:kills/piglinh_piglin
advancement revoke @s only journal:kills/plague_doctor
advancement revoke @s only journal:kills/bomber
advancement revoke @s only journal:kills/bandit
advancement revoke @s only journal:kills/withered_knight
advancement revoke @s only journal:kills/skeleton_knight
advancement revoke @s only journal:kills/withered_brute
advancement revoke @s only journal:kills/ghost
advancement revoke @s only journal:kills/withered_leaper
advancement revoke @s only journal:kills/wind_thief
advancement revoke @s only journal:kills/rogue
advancement revoke @s only journal:kills/lobber
advancement revoke @s only journal:kills/spawner
advancement revoke @s only journal:kills/candlehead
advancement revoke @s only journal:kills/phantom
advancement revoke @s only journal:kills/keeper
advancement revoke @s only journal:kills/fallen_arbalist
advancement revoke @s only journal:kills/mage