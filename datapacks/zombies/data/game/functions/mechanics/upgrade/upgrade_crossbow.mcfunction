##Called to upgrade our crossbow


##If we had the golden crossbow
execute if score @s crossbow_id matches 39 run scoreboard players remove @s loot_multiplier 30

scoreboard players operation @s crossbow_id = @s possible_upgrade

##Updating our reached tier.
scoreboard players set @s[scores={crossbow_id=1..9,reached_tier=0}] reached_tier 1
scoreboard players set @s[scores={crossbow_id=10..27,reached_tier=..1}] reached_tier 2
scoreboard players set @s[scores={crossbow_id=28..,reached_tier=..2}] reached_tier 3

clear @s crossbow
clear @s arrow

item replace entity @s weapon.offhand with air

scoreboard players reset @s radioactive_miss

execute unless score $difficulty settings matches -1 run advancement grant @s[tag=!tutorial] only advancements:game-first_upgrade

##sounds
execute at @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0
execute at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0

##Particles
execute if entity @e[tag=hit,type=marker,tag=fire_upgrade_spot] at @s run particle lava ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @e[tag=hit,type=marker,tag=water_upgrade_spot] at @s run particle rain ~ ~0.75 ~ 0.25 0.5 0.25 0.25 25
execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] at @s run particle block granite ~ ~0.75 ~ 0.25 0.5 0.25 0.25 8
execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] at @s run particle block polished_granite ~ ~0.75 ~ 0.25 0.5 0.25 0.25 7
execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] at @s run particle block stone ~ ~0.75 ~ 0.25 0.5 0.25 0.25 5
execute if entity @e[tag=hit,type=marker,tag=air_upgrade_spot] at @s run particle cloud ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @e[tag=hit,type=marker,tag=ice_upgrade_spot] at @s run particle block ice ~ ~0.75 ~ 0.25 0.5 0.25 0.25 15
execute if entity @e[tag=hit,type=marker,tag=lightning_upgrade_spot] at @s run particle item yellow_stained_glass ~ ~0.75 ~ 0.25 0.5 0.25 0.2 15
execute if entity @e[tag=hit,type=marker,tag=lightning_upgrade_spot] at @s run particle item yellow_wool ~ ~0.75 ~ 0.25 0.5 0.25 0.15 15
execute if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] at @s run particle item green_concrete_powder ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5
execute if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] at @s run particle item minecraft:short_grass ~ ~0.75 ~ 0.25 0.5 0.25 0.25 10
execute if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] at @s run particle item lime_terracotta ~ ~0.75 ~ 0.25 0.5 0.25 0.2 5
execute if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] at @s run particle squid_ink ~ ~0.75 ~ 0.25 0.5 0.25 0.1 5
execute if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] at @s run particle item iron_block ~ ~0.75 ~ 0.25 0.5 0.25 0.15 5

execute if entity @e[tag=hit,type=marker,tag=fire_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_fire 1
execute if entity @e[tag=hit,type=marker,tag=water_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_water 1
execute if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_earth 1
execute if entity @e[tag=hit,type=marker,tag=air_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_air 1
execute if entity @e[tag=hit,type=marker,tag=ice_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_ice 1
execute if entity @e[tag=hit,type=marker,tag=lightning_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_lightning 1
execute if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_nature 1
execute if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_darkness 1
execute if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] at @s unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_metal 1

##Advancements
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=fire_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-fire
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=water_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-water
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=earth_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-earth
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=air_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-air
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=ice_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-ice
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=lightning_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-lightning
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=nature_upgrade_spot] at @s run advancement grant @s[tag=!tutorial] only advancements:upgrade-nature
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=darkness_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-darkness
execute unless score $difficulty settings matches -1 if entity @e[tag=hit,type=marker,tag=metal_upgrade_spot] at @s run advancement grant @s only advancements:upgrade-metal
execute unless score $difficulty settings matches -1 run advancement grant @s[advancements={advancements:upgrade-fire=true,advancements:upgrade-water=true,advancements:upgrade-earth=true,advancements:upgrade-air=true,advancements:upgrade-ice=true,advancements:upgrade-lightning=true,advancements:upgrade-nature=true,advancements:upgrade-darkness=true,advancements:upgrade-metal=true}] only advancements:upgrade-all



##If our quiver is empty, refill it.
tag @s add temporary_tag
execute if entity @s[tag=temporary_tag] run function game:mechanics/reload

##removing temporary_tag 
tag @s remove temporary_tag

##removing that upgrade spot
execute as @e[type=marker,tag=hit,tag=upgrade_spot] at @s run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.15 15
execute if score $mode settings matches 0 run execute as @e[type=marker,tag=hit,tag=upgrade_spot] at @s run kill @e[type=area_effect_cloud,tag=upgrade_text,sort=nearest,limit=1]
execute if score $mode settings matches 0 run execute as @e[type=marker,tag=hit,tag=upgrade_spot] at @s run kill @e[type=armor_stand,tag=upgrade_marker,sort=nearest,limit=1]
execute if score $mode settings matches 0 run kill @e[type=marker,tag=hit,tag=upgrade_spot]

##Resetting times shot, because it's a new crossbow
scoreboard players reset @s times_shot


##If we upgraded to the golden crossbow
execute if score @s crossbow_id matches 39 run scoreboard players add @s loot_multiplier 30

##Resetting life_kills
scoreboard players reset @s life_kills


##showing details
function game:mechanics/get_crossbow_details

##Summon an AOE spot if this is not the default dungeon
execute if score $mode settings matches 1.. unless entity @s[tag=tutorial] run summon area_effect_cloud ~ ~ ~ {Tags:["die_between_games","used_upgrade","needs_adjustments"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score $mode settings matches 1.. unless entity @s[tag=tutorial] run scoreboard players operation @e[type=area_effect_cloud,tag=needs_adjustments,limit=1,sort=arbitrary] id = @s id
execute if score $mode settings matches 1.. unless entity @s[tag=tutorial] run tag @e[type=area_effect_cloud,tag=needs_adjustments,limit=1,sort=arbitrary] remove needs_adjustments

tag @a remove holding_map
