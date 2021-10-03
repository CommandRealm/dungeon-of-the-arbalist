##Called when we get a kill.


scoreboard players reset @s get_kill

##Specific crossbow kill functions
execute if score @s crossbow_id matches 34 run function game:mechanics/get_kill_with_specific/life

execute unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_kills 1
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
##If we killed a miniboss
execute if entity @s[advancements={game:kill_miniboss=true},tag=!tutorial] unless score $difficulty settings matches -1 run advancement grant @s only advancements:game-miniboss


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

advancement revoke @a only journal:kills/witch_shopkeeper
advancement revoke @a only journal:kills/gallant_golem
advancement revoke @a only journal:kills/erodus
advancement revoke @a only journal:kills/vindicator_shopkeeper
advancement revoke @a only journal:kills/blacksmith
advancement revoke @a only journal:kills/tower_archer
advancement revoke @a only journal:kills/cobalt_king
advancement revoke @a only journal:kills/cobalt_king_guard
advancement revoke @a only journal:kills/golden_guard