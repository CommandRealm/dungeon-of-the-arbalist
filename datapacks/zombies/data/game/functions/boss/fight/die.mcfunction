##Called when the boss is dead.



##Sounds
execute at @e[type=area_effect_cloud,tag=start_boss_fight] run playsound minecraft:entity.wither.death master @a[tag=playing] ~ ~ ~ 100 0.5

##Specific boss death noises.
execute if score $boss boss matches 0 at @e[tag=boss,type=ravager] run playsound minecraft:entity.ravager.death master @a ~ ~ ~ 1.5 0.75

##Message
tellraw @a[tag=playing] [{"text":"☀ ","color":"gold"},{"nbt":"name","storage":"game:boss","interpret": true},{"text":" "},{"nbt":"title","storage":"game:boss","interpret": true},{"text":" has been defeated","color":"green"},{"text":"!","color":"gold"}]

##Portal cooldown
scoreboard players set $portal boss 100
scoreboard players set $started boss -1

##Removing Viscean's barricades
execute if score $boss boss matches 1 run fill 2002 63 -3 1997 63 2 air replace dark_prismarine
execute if score $boss boss matches 1 run function game:boss/fight/guardian/floor/reset_floor

##If this is pug's map
execute if score $mode settings matches 1 run scoreboard players set @a[tag=playing] objective 5
execute if score $mode settings matches 1 as @a[tag=playing,gamemode=adventure] at @s run function game:adventure/new_objective

execute if score $mode settings matches 2 run scoreboard players set @a[tag=playing] objective 5
execute if score $mode settings matches 2 as @a[tag=playing,gamemode=adventure] at @s run function game:adventure/new_objective

execute unless score $modifiers settings matches 1 unless score $difficulty settings matches -1 run advancement grant @a[tag=playing,tag=in_boss_room,gamemode=adventure,team=game] only advancements:game-boss

execute at @e[tag=boss] run loot spawn ~ ~ ~ loot game:enemy_drops/boss

# giving timer if needed
execute as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=game] at @s unless score @s enemy_spawn_time matches 1.. run function game:enemy/get_spawn_timer


##Kill
tp @e[tag=boss] 0 0 0
kill @e[tag=boss]
tp @e[tag=boss_minion] 0 0 0
kill @e[tag=boss_minion]

schedule function game:boss/fight/open_doors 150t

# awarding trims for defeating bosses
execute if score $difficulty settings matches 1.. if score $boss boss matches 0 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_10] at @s run function cosmetics:armor_trims/unlock_skelrath
execute if score $difficulty settings matches 1.. if score $boss boss matches 1 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_11] at @s run function cosmetics:armor_trims/unlock_viscean
execute if score $difficulty settings matches 1.. if score $boss boss matches 2 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_12] at @s run function cosmetics:armor_trims/unlock_nixeous
execute if score $difficulty settings matches 1.. if score $boss boss matches 3 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_13] at @s run function cosmetics:armor_trims/unlock_titan
execute if score $difficulty settings matches 1.. if score $boss boss matches 4 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_14] at @s run function cosmetics:armor_trims/unlock_essence
execute if score $difficulty settings matches 1.. if score $boss boss matches 5 as @a[tag=playing,gamemode=adventure,tag=in_boss_room,team=!enemy,tag=!trim_15] at @s run function cosmetics:armor_trims/unlock_morganlol



# advancement
execute if score $volition game matches 1 if score $wave game matches 75.. unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[tag=playing,team=game] only advancements:volition/random-boss

tag @e[type=marker,tag=zombie_spawnpoint,tag=boss_room_spawnpoint] add spawnable
tag @e[type=marker,tag=zombie_spawnpoint] remove boss_room_spawnpoint
