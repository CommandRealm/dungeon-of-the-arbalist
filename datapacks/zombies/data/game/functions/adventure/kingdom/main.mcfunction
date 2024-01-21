##Main kingdom function
tp @e[type=area_effect_cloud,tag=used_upgrade,x=3146,y=70,z=-4,distance=..15] 3146 70 -4

##Starting the forge miniboss
execute if score $forge_boss game matches 0 if entity @a[x=2994,y=81,z=62,distance=..15] run function game:enemy/cpt_forge/summon

execute if score $king_boss game matches 0 if entity @a[x=3089,y=98,z=157,distance=..20] run function game:enemy/cpt_king/summon



execute if block 2998 81 78 player_head run schedule function game:adventure/kingdom/gold_machine 2t

execute if entity @e[type=item,tag=key] run function game:adventure/kingdom/key/main

##If a player has a key.
execute if entity @a[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{tag:{key_item:1b}}]}] run function game:adventure/kingdom/key/player_has_key

##Starting the crypt animation
execute if score $crypt_animation_played game matches 0 if score $crypt_animation game matches 0 if entity @a[x=3160,y=72,z=174,distance=..5.5] run function game:adventure/kingdom/crypt_animation/start
execute if score $crypt_animation game matches 1.. run function game:adventure/kingdom/crypt_animation/main

execute as @a[tag=playing,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:compass"}}] at @s run function game:adventure/compass/start


execute as @e[type=zombie,tag=cpt_king_miniboss,tag=pool_tp,x=3088,y=43,z=150,distance=..5] at @s run function game:adventure/kingdom/pool_tp


execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:vindicator_shopkeeper=false}] at @s unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if entity @e[type=vindicator,tag=shopkeeper,team=enemy,distance=..7] run advancement grant @s only journal:vindicator_shopkeeper
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:cobalt_king_guard=false}] at @s unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 if entity @e[type=zombie,tag=guards,distance=..7] run advancement grant @s only journal:cobalt_king_guard