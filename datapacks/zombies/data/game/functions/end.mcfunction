##Ending function of the game

tp @e[tag=die_between_games] 0 0 0

kill @e[tag=die_between_games]
# clearing schedules
schedule clear game:mechanics/active_efficient

##Sets game state to 0
scoreboard players set $game state 0



tag @a[team=spectator] add playing

title @a[tag=playing] times 0 25 5
##Resets players
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
clear @a[tag=playing]
tp @a[tag=playing] 7 91 22 45 0

##Resetting the dropped knowledge book objective.
scoreboard players reset @a[tag=playing] drop_ready_book

##healing players
effect give @a[tag=playing] regeneration 1 255 true


execute as @a[tag=playing] at @s run function general:rank

##Removing tags

tellraw @a[tag=!playing] [{"text":"- ","color":"gray"},{"text":"The game has ended.","color":"green"}]
tag @a[tag=playing] remove mechanics
tag @a[tag=playing] remove playing



xp set @a 0 levels
xp set @a 0 points


##Removing forceload
forceload remove all

##Resetting list objective
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name

##removing bossbar
bossbar remove game:wave



##removing triggers

scoreboard objectives remove skip


##resetting attributes

execute as @a run attribute @s generic.max_health base set 20.0

effect give @a minecraft:instant_health 1 0
execute as @a run attribute @s generic.movement_speed base set 0.1

##Removing boss bossbar
bossbar remove game:boss

##Clear knowledge book
clear @a knowledge_book

##end obj
scoreboard objectives remove end

##Stopping music sounds
stopsound @a * minecraft:music.nether.basalt_deltas
stopsound @a * minecraft:ambient.underwater.loop.additions.ultra_rare
stopsound @a * minecraft:music.nether.nether_wastes


##Advancements
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[advancements={advancements:game-die=true,advancements:game-spruce_door=true,advancements:game-dark_door=true,advancements:game-boss_door=true,advancements:game-first_upgrade=true,advancements:game-shop=true,advancements:game-miniboss=true,advancements:game-boss=true}] only advancements:game-all

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[advancements={journal:zombie=true,journal:spider=true,journal:knight=true,journal:brute=true,journal:leaper=true,journal:skeleton=true,journal:witch=true,journal:husk=true,journal:evoker=true,journal:vex=true,journal:hooded=true,journal:shopkeeper=true,journal:spider_queen=true,journal:fiery_fiend=true,journal:furious_fungus=true,journal:polar_family=true,journal:daring_dancer=true,journal:royal_archer=true,journal:static_splitters=true,journal:gravedigger=true,journal:ender_king=true,journal:scary_swarm=true,journal:skelrath=true,journal:viscean=true,journal:exploding_guardian=true,journal:shield_guardian=true,journal:nixeous=true,journal:jockey=true,journal:molten_titan=true,journal:magma_cube=true,journal:essence_of_the_forest=true,journal:witch_shopkeeper=true,journal:dangerous_duo=true,journal:gallant_golem=true,journal:erodus=true,journal:block=true,journal:vindicator_shopkeeper=true,journal:blacksmith=true,journal:tower_archer=true,journal:cobalt_king=true,journal:cobalt_king_guard=true,journal:torthar=true,journal:golden_guard=true,journal:piglin_horde=true,journal:plague_doctor=true,journal:bomber=true,journal:bandit=true,journal:withered_knight=true,journal:skeleton_knight=true,journal:withered_brute=true,journal:ghost=true,journal:withered_leaper=true,journal:wind_thief=true,journal:rogue=true,journal:lobber=true,journal:spawner=true,journal:candlehead=true,journal:phantom=true,journal:keeper=true,journal:fallen_arbalist=true,journal:mage=true}] only advancements:hidden/hidden-journal



