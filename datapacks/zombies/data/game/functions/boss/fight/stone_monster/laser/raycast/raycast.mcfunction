##Called when the aec should raycast

execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[tag=playing,gamemode=adventure,distance=..2.5] instant_damage 1 1 true
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block coarse_dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block stone ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute at @e[type=area_effect_cloud,tag=stone_monster_laser] run playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0

execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=wither_skeleton,tag=boss,distance=20..] if score $attack boss matches 2.. run scoreboard players set $attack boss 1


##Again

execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[tag=playing,gamemode=adventure,distance=..2.5] instant_damage 1 1 true
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block coarse_dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block stone ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=wither_skeleton,tag=boss,distance=20..] if score $attack boss matches 2.. run scoreboard players set $attack boss 1

##Again

execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[tag=playing,gamemode=adventure,distance=..2.5] instant_damage 1 1 true
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block coarse_dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block dirt ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s run particle block stone ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute as @e[type=area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=wither_skeleton,tag=boss,distance=20..] if score $attack boss matches 2.. run scoreboard players set $attack boss 1