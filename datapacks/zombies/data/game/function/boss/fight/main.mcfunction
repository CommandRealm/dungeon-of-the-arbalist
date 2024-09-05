##Called when the fight is in progress.

##Zombie summons
scoreboard players remove $spawn boss 1
execute unless score $starting_players game matches 1 if score $spawn boss matches ..0 run function game:boss/fight/spawn_enemy

##Attack cooldowns
scoreboard players remove $cooldown boss 1
execute if score $cooldown boss matches 0 run function game:boss/fight/cooldown_over

##Charge-up time
execute if score $charge boss matches 1.. run function game:boss/fight/charge

##Attack in progress
execute if score $attack boss matches 1.. run function game:boss/fight/attacking

##Transforming between phases.
execute if score $transform boss matches 1.. run function game:boss/fight/transforming



##Particles
execute as @a[tag=playing,tag=in_boss_room] at @s unless score $started boss matches -1 run particle minecraft:ash ~ ~ ~ 5 5 5 0.15 30

##Seeing if the boss takes damage
execute unless score $health boss = $compare_health boss run function game:boss/fight/update_bossbar

##Specific boss functions
execute if score $boss boss matches 0 run function game:boss/fight/ravager/main
execute if score $boss boss matches 1 run function game:boss/fight/guardian/main
execute if score $boss boss matches 4 if score $phase boss matches 2 run function game:boss/fight/forest_essence/main
execute if score $mode settings matches 1 run function game:boss/fight/stone_monster/main
execute if score $mode settings matches 2 run function game:boss/fight/mummy/main



##Journal entries.
execute if score $mode settings matches 0 as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:skelrath=false}] at @s if entity @e[type=minecraft:wither_skeleton,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:skelrath
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:viscean=false}] at @s if entity @e[type=minecraft:elder_guardian,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:viscean
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:exploding_guardian=false}] at @s if entity @e[type=minecraft:guardian,distance=..7,tag=exploding_guardian] unless score $difficulty settings matches -1 run advancement grant @s only journal:exploding_guardian
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:shield_guardian=false}] at @s if entity @e[type=minecraft:guardian,distance=..7,tag=guardian_shield] unless score $difficulty settings matches -1 run advancement grant @s only journal:shield_guardian
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:nixeous=false}] at @s if entity @e[type=minecraft:stray,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:nixeous
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:jockey=false}] at @s if entity @e[distance=..7,tag=jockey] unless score $difficulty settings matches -1 run advancement grant @s only journal:jockey
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:molten_titan=false}] at @s if entity @e[type=minecraft:magma_cube,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:molten_titan
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:magma_cube=false}] at @s if entity @e[type=minecraft:magma_cube,distance=..7,tag=boss_minion] unless score $difficulty settings matches -1 run advancement grant @s only journal:magma_cube
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:essence_of_the_forest=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:essence_of_the_forest

execute if score $mode settings matches 1 as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:erodus=false}] at @s if entity @e[type=minecraft:wither_skeleton,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:erodus
execute if score $mode settings matches 1 as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:block=false}] at @s if entity @e[type=minecraft:zombie,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:block
execute if score $mode settings matches 2 as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:torthar=false}] at @s if entity @e[type=minecraft:wither_skeleton,distance=..7,tag=boss] unless score $difficulty settings matches -1 run advancement grant @s only journal:torthar
execute as @a[gamemode=adventure,tag=playing,tag=in_boss_room,team=game,advancements={journal:golden_guard=false}] at @s if entity @e[type=minecraft:zombie,distance=..7,tag=knight_zombie_torthar] unless score $difficulty settings matches -1 run advancement grant @s only journal:golden_guard

##Killing fishing rod.
execute at @e[tag=boss] run kill @e[type=minecraft:fishing_bobber,distance=..2.5]
return 1