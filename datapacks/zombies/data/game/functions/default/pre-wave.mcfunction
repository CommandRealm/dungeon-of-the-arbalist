##Generation
execute if score $time game matches 35 run function game:default/force_load_chunks

execute if score $time game matches 49 run function game:default/clear_map
execute if score $time game matches 50 run function game:default/generation/random/generate
execute if score $time game matches 151 run function game:default/generation/early_generation_end
execute if score $time game matches 155..276 run function game:default/generation/activate_blocks
execute if score $time game matches 277 run function game:default/generation/late_generation
execute if score $time game matches 279 run function game:default/spawn_players
execute if score $time game matches 349 run function game:default/start_gameplay

execute if score $time game matches 1..276 run function game:default/loading_screen/main

##vote end
execute if entity @a[tag=playing,gamemode=adventure,team=game,scores={skip=1}] unless entity @a[tag=playing,gamemode=adventure,team=game,scores={skip=..0}] if score $time game matches ..994 run scoreboard players set $time game 994
execute as @a[tag=playing,gamemode=adventure,team=game,scores={skip=1},tag=!sent_vote_end_message] at @s run function game:default/send_vote_end_message