##Called to reset the players.


##tag
tag @s remove seen_info_message_1
tag @s remove seen_info_message_2

##so we don't reset again
scoreboard players add @s resetting 1


scoreboard players set @s parkour_score 1000000000
scoreboard players set @s castle_score 1000000000
scoreboard players set @s kingdom_score 1000000000

scoreboard players set @s prefix -1

function general:update_roles

##Setting our prefix score for if we have a tag.
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5

execute if entity @s[tag=has_pc] run scoreboard players set @s prefix -2

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7

##Resetting stats
scoreboard players set @s global_games 0
scoreboard players set @s global_wins 0
scoreboard players set @s global_shots 0
scoreboard players set @s global_hits 0
scoreboard players set @s global_accuracy 0
scoreboard players set @s global_kills 0
scoreboard players set @s global_treasure 0
scoreboard players set @s global_spent 0
scoreboard players set @s global_difficult -1

scoreboard players set @s global_fire 0
scoreboard players set @s global_water 0
scoreboard players set @s global_earth 0
scoreboard players set @s global_air 0
scoreboard players set @s global_ice 0
scoreboard players set @s global_lightning 0
scoreboard players set @s global_nature 0
scoreboard players set @s global_darkness 0
scoreboard players set @s global_metal 0



scoreboard players set @s global_punch 0
scoreboard players set @s global_falls 0
scoreboard players set @s global_revives 0

##Journal kills
scoreboard players set @s j_zombie 0
scoreboard players set @s j_spider 0
scoreboard players set @s j_knight 0
scoreboard players set @s j_brute 0
scoreboard players set @s j_leaper 0
scoreboard players set @s j_skeleton 0
scoreboard players set @s j_witch 0
scoreboard players set @s j_husk 0
scoreboard players set @s j_evoker 0
scoreboard players set @s j_vex 0
scoreboard players set @s j_hooded 0
scoreboard players set @s j_shopkeeper 0


scoreboard players set @s j_spider_queen 0
scoreboard players set @s j_fiery_fiend 0
scoreboard players set @s j_furious_fungus 0
scoreboard players set @s j_polar_family 0
scoreboard players set @s j_daring_dancer 0
scoreboard players set @s j_royal_archer 0
scoreboard players set @s j_static_split 0
scoreboard players set @s j_gravedigger 0
scoreboard players set @s j_ender_king 0
scoreboard players set @s j_scary_swarm 0

scoreboard players set @s j_skelrath 0
scoreboard players set @s j_viscean 0
scoreboard players set @s j_e_guardian 0
scoreboard players set @s j_s_guardian 0
scoreboard players set @s j_nixeous 0
scoreboard players set @s j_jockey 0
scoreboard players set @s j_molten_titan 0
scoreboard players set @s j_magma_cube 0
scoreboard players set @s j_forest_essence 0

scoreboard players set @s j_witch_shop 0
scoreboard players set @s j_dangerous_duo 0
scoreboard players set @s j_gallant_golem 0
scoreboard players set @s j_erodus 0
scoreboard players set @s j_block 0
scoreboard players set @s j_vindicator_sho 0
scoreboard players set @s j_blacksmith 0
scoreboard players set @s j_tower_archer 0
scoreboard players set @s j_cobalt_king 0
scoreboard players set @s j_king_guard 0
scoreboard players set @s j_torthar 0
scoreboard players set @s j_gold_guard 0
scoreboard players set @s j_tutorial_enemy 0
##Readying us up
scoreboard players set @s ready 1

tag @s remove no_completionist_particles
##Recipe
recipe take @s *

##advancements
advancement revoke @s everything

##Finding lobby id
scoreboard players add $id lobby_id 1
scoreboard players operation @s lobby_id = $id lobby_id

##Xp
xp set @s 0 levels
xp set @s 0 points


##REmoving titles
tag @s remove title_0
tag @s remove title_1
tag @s remove title_2
tag @s remove title_3
tag @s remove title_4
tag @s remove title_5
tag @s remove title_6
tag @s remove title_7
tag @s remove title_8
tag @s remove title_9
tag @s remove title_10
tag @s remove title_11
tag @s remove title_12
tag @s remove title_13
tag @s remove title_14
tag @s remove title_15
tag @s remove title_16
tag @s remove title_17
tag @s remove title_18
tag @s remove title_19
tag @s remove title_20
tag @s remove title_21
tag @s remove title_22
tag @s remove title_23
tag @s remove title_24
tag @s remove title_25
tag @s remove title_26
tag @s remove title_27
tag @s remove title_28
tag @s remove title_29
tag @s remove title_30
tag @s remove title_31
tag @s remove title_32
tag @s remove title_33
tag @s remove title_34
tag @s remove title_35
tag @s remove title_36
tag @s remove title_37
tag @s remove title_38
tag @s remove title_39
tag @s remove title_40
tag @s remove title_41
tag @s remove title_42
tag @s remove title_43
tag @s remove title_44
tag @s remove title_45
tag @s remove title_46
tag @s remove title_47
tag @s remove title_48
tag @s remove title_49
tag @s remove title_50
tag @s remove title_51
tag @s remove title_52
tag @s remove title_53
tag @s remove title_54
tag @s remove title_55
tag @s remove title_56
tag @s remove title_57
tag @s remove title_58
tag @s remove title_59
tag @s remove title_60
tag @s remove title_61
tag @s remove title_62
tag @s remove title_63

##Armor
scoreboard players set @s armor 0
tag @s remove armor_7
tag @s remove armor_8
tag @s remove armor_9
tag @s remove armor_10
tag @s remove armor_11
tag @s remove armor_12
tag @s remove armor_13

##Punch effect
scoreboard players set @s cosmetics_punch 0
tag @s remove punch_10
tag @s remove punch_11
tag @s remove punch_12
tag @s remove punch_13
tag @s remove punch_14
tag @s remove punch_15
tag @s remove punch_16
tag @s remove punch_17
