##called to revive the player.


##tag
tag @e[type=area_effect_cloud] remove temporary_tag
tag @s add temporary_tag


execute as @a[tag=playing,team=fallen] at @s run scoreboard players operation @s calculate = @s id
execute as @a[tag=playing,team=fallen] at @s run scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=temporary_tag,limit=1,sort=arbitrary] id

tag @a[tag=playing,team=fallen,scores={calculate=0}] add temporary_tag

##tps and stuff
tp @p[tag=temporary_tag] @e[type=area_effect_cloud,tag=revive_aec,tag=temporary_tag,limit=1,sort=arbitrary] 
execute as @p[tag=temporary_tag] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]
team join game @p[tag=temporary_tag]
gamemode adventure @p[tag=temporary_tag]
execute as @p[tag=temporary_tag] at @s run function game:mechanics/stat_boosts/update_attributes

title @p[tag=temporary_tag] title [{"text":""}]
title @p[tag=temporary_tag] subtitle [{"text":"You were revived!","color":"green"}]

# TRIALS
effect give @p[tag=temporary_tag,tag=trial_gloom] darkness infinite 255 true


execute if entity @p[tag=temporary_tag] run tellraw @a[tag=playing] [{"selector":"@p[tag=temporary_tag]"},{"text":" was revived by: ","color":"yellow"},{"selector":"@a[distance=..5,tag=playing,tag=!temporary_tag,team=game]"}]
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run scoreboard players add @a[distance=..5,tag=playing,tag=!temporary_tag,team=game] global_revives 1


##Adjusting the revived players health.
execute if score $difficulty settings matches 1 run effect give @p[tag=temporary_tag] instant_damage 1 0 true
execute if score $difficulty settings matches 2.. run effect give @p[tag=temporary_tag] instant_damage 1 1 true
execute if score $difficulty settings matches 3 run effect give @p[tag=temporary_tag] minecraft:wither 3 1 true
execute if score $difficulty settings matches 4.. run effect give @p[tag=temporary_tag] minecraft:wither 4 2 true

##halfing money
scoreboard players operation @p[tag=temporary_tag] treasure /= $2 number



##kills
execute positioned ~ ~2.0 ~ run kill @e[type=area_effect_cloud,tag=revive_name_text,sort=nearest,limit=1]
execute positioned ~ ~1.75 ~ run kill @e[type=area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1]
execute positioned ~ ~1.5 ~ run kill @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1]
kill @e[type=armor_stand,tag=revive_point,sort=nearest,limit=1]
kill @s


##explosion
execute as @e[tag=enemy,distance=..4.25] at @s run effect give @s luck 1 120 true
execute as @e[tag=enemy,distance=..4.25] at @s run effect give @s instant_damage 1 0 true
execute as @e[tag=enemy,distance=..4.25] at @s run effect give @s instant_health 1 0 true
execute as @e[tag=enemy,distance=..4.25] at @s run function game:enemy/take_damage

##sound and particles
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1

##removing temporary tags
tag @a remove temporary_tag
