##Called when you die.


##dead team
team join dead @s
execute if entity @a[tag=playing,team=game,gamemode=adventure] run team join fallen @s
execute if score $difficulty settings matches 5.. run team join dead


##If there is a possibility of us being revived, summon the revive point.
execute if entity @s[team=fallen] run function game:mechanics/revive/summon_revive_point

##Resetting score
scoreboard players reset @s death

gamemode spectator @s


##
execute as @a[tag=playing] at @s run playsound minecraft:entity.skeleton.death master @s ~ ~ ~ 1 0.67

##Title
title @s[tag=!play_alternate_title] title [{"text":""}]
title @s subtitle [{"text":"You died.","color":"red"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] run title @s subtitle [{"text":"You have fallen.","color":"red"}]



##Death message.
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 0 run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has fallen. Reach them within eighty seconds to revive them.","color":"gray"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 1 run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has fallen. Reach them within seventy seconds to revive them.","color":"gray"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 2 run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has fallen. Reach them within sixty seconds to revive them.","color":"gray"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 3 run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has fallen. Reach them within fifty seconds to revive them.","color":"gray"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 4 run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has fallen. Reach them within fourty seconds to revive them.","color":"gray"}]
execute if entity @a[tag=playing,team=game,gamemode=adventure] if score $difficulty settings matches 5.. run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" died.","color":"gray"}]
execute unless entity @a[tag=playing,team=game,gamemode=adventure] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" died.","color":"gray"}]


##removing tag
tag @s add needs_spectator_fix

##Resetting our stats

execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_health 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_quiver 0
execute if score $difficulty settings matches 2.. if score @s boost_treasure matches 1.. run scoreboard players remove @s loot_multiplier 10
execute if score $difficulty settings matches 2.. if score @s boost_treasure matches 2.. run scoreboard players remove @s loot_multiplier 10
execute if score $difficulty settings matches 2.. if score @s boost_treasure matches 3.. run scoreboard players remove @s loot_multiplier 10
execute if score $difficulty settings matches 2.. if score @s boost_treasure matches 4.. run scoreboard players remove @s loot_multiplier 10
execute if score $difficulty settings matches 2.. if score @s boost_treasure matches 5.. run scoreboard players remove @s loot_multiplier 10

execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_treasure 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_damage 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_speed 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s boost_revive 0

execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_health 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_quiver 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_treasure 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_damage 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_speed 0
execute if score $difficulty settings matches 2.. run scoreboard players set @s mastery_revive 0

execute if score $difficulty settings matches 2.. run function game:mechanics/stat_boosts/update_attributes

##Resetting armor.
execute if score $difficulty settings matches 2.. run scoreboard players set @s color 16777215


##
execute if score $difficulty settings matches 2.. run scoreboard players set @s colors_in_armor 1
execute if score $difficulty settings matches 2.. run scoreboard players set @s colors_for_armor 2
execute if score $difficulty settings matches 2.. run clear @s leather_leggings


##removing advancement
advancement revoke @s only game:dead_player_hit_player

##adding stat
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run scoreboard players add @s global_falls 1

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only advancements:game-die


# Trials:
execute if entity @s[tag=trial_firetrail] run function game:trials/footprints/clear_trail

# if this is default
execute if score $mode settings matches 0 run scoreboard players operation @s wave_reached = $wave game

function journal:check_death