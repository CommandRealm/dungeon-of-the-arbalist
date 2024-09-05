##Main kingdom function
tp @e[type=minecraft:area_effect_cloud,x=3146,y=70,z=-4,distance=..15,tag=used_upgrade] 3146 70 -4

##Starting the forge miniboss
execute if score $forge_boss game matches 0 if entity @a[x=2994,y=81,z=62,distance=..15] run function game:enemy/cpt_forge/summon

execute if score $king_boss game matches 0 if entity @a[x=3089,y=98,z=157,distance=..20] run function game:enemy/cpt_king/summon



execute if block 2998 81 78 minecraft:player_head run schedule function game:adventure/kingdom/gold_machine 2t

execute if entity @e[type=minecraft:item,tag=key] run function game:adventure/kingdom/key/main

##If a player has a key.
execute if entity @a[gamemode=adventure,tag=playing,team=game,nbt={Inventory:[{components:{"minecraft:custom_data":{key_item:1b}}}]}] run function game:adventure/kingdom/key/player_has_key

##Starting the crypt animation
execute if score $crypt_animation_played game matches 0 if score $crypt_animation game matches 0 if entity @a[x=3160,y=72,z=174,distance=..5.5] run function game:adventure/kingdom/crypt_animation/start
execute if score $crypt_animation game matches 1.. run function game:adventure/kingdom/crypt_animation/main

execute as @a[gamemode=adventure,tag=playing,nbt={SelectedItem:{id:"minecraft:compass"}}] at @s run function game:adventure/compass/start


execute as @e[type=minecraft:zombie,x=3088,y=43,z=150,distance=..5,tag=cpt_king_miniboss,tag=pool_tp] at @s run function game:adventure/kingdom/pool_tp


execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:vindicator_shopkeeper=false}] at @s unless score $difficulty settings matches -1 if entity @e[type=minecraft:vindicator,distance=..7,tag=shopkeeper,team=enemy] run advancement grant @s only journal:vindicator_shopkeeper
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:cobalt_king_guard=false}] at @s unless score $difficulty settings matches -1 if entity @e[type=minecraft:zombie,distance=..7,tag=guards] run advancement grant @s only journal:cobalt_king_guard
return 1