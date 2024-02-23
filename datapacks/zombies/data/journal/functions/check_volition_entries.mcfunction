# called to check volition entries
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:shopkeeper=false}] at @s if entity @e[type=pillager,tag=shopkeeper,team=enemy,distance=..7] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only journal:shopkeeper

# volition



execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:piglin_horde=false}] at @s if entity @e[type=hoglin,tag=piglin_miniboss,team=enemy,distance=..7] run advancement grant @s only journal:piglin_horde
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:piglin_horde=false}] at @s if entity @e[type=piglin,tag=piglin_miniboss,team=enemy,distance=..7] run advancement grant @s only journal:piglin_horde
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:plague_doctor=false}] at @s if entity @e[type=wither_skeleton,tag=plague_zombie,team=enemy,distance=..7] run advancement grant @s only journal:plague_doctor
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:bomber=false}] at @s if entity @e[type=wither_skeleton,tag=exploding_zombie,team=enemy,distance=..7] run advancement grant @s only journal:bomber
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:bandit=false}] at @s if entity @e[type=zombie,tag=bandit,team=enemy,distance=..7] run advancement grant @s only journal:bandit
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:withered_knight=false}] at @s if entity @e[type=wither_skeleton,tag=wither_knight_zombie,team=enemy,distance=..7] run advancement grant @s only journal:withered_knight
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:skeleton_knight=false}] at @s if entity @e[type=skeleton,tag=skeleton_knight,team=enemy,distance=..7] run advancement grant @s only journal:skeleton_knight
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:withered_brute=false}] at @s if entity @e[type=wither_skeleton,tag=wither_powerful_zombie,team=enemy,distance=..7] run advancement grant @s only journal:withered_brute
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:ghost=false}] at @s if entity @e[type=zombie,tag=ghost,team=enemy,distance=..7] run advancement grant @s only journal:ghost
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:withered_leaper=false}] at @s if entity @e[type=wither_skeleton,tag=wither_leaper_zombie,team=enemy,distance=..7] run advancement grant @s only journal:withered_leaper
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:wind_thief=false}] at @s if entity @e[type=zombie,tag=wind_zombie,team=enemy,distance=..7] run advancement grant @s only journal:wind_thief
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:rogue=false}] at @s if entity @e[type=pillager,tag=rogue,team=enemy,distance=..7] run advancement grant @s only journal:rogue
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:lobber=false}] at @s if entity @e[type=wither_skeleton,tag=lobber,team=enemy,distance=..7] run advancement grant @s only journal:lobber
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:spawner=false}] at @s if entity @e[type=magma_cube,tag=mob_spawner_hitbox,team=enemy,distance=..7] run advancement grant @s only journal:spawner
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:candlehead=false}] at @s if entity @e[type=skeleton,tag=fire_skeleton,team=enemy,distance=..7] run advancement grant @s only journal:candlehead
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:phantom=false}] at @s if entity @e[type=phantom,tag=,team=enemy,distance=..7] run advancement grant @s only journal:phantom
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:keeper=false}] at @s if entity @e[type=zombie,tag=keeper,team=enemy,distance=..7] run advancement grant @s only journal:keeper
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:fallen_arbalist=false}] at @s if entity @e[type=zombie,tag=fallen_arbalist,team=enemy,distance=..7] run advancement grant @s only journal:fallen_arbalist
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:mage=false}] at @s if entity @e[type=zombie,tag=mage,team=enemy,distance=..7] run advancement grant @s only journal:mage

# doorway advancements 
# advancement check (wave game is just to make sure it isnt given right away)
execute if score $volition game matches 1 if score $wave game matches 2.. unless entity @e[type=marker,tag=doorway,tag=!edge_doorway] unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[tag=playing,team=game] only advancements:volition/random-doors