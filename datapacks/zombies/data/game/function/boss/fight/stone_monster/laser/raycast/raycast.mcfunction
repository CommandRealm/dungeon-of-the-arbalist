##Called when the aec should raycast

execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[gamemode=adventure,distance=..2.5,tag=playing] minecraft:instant_damage 1 1 true
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:coarse_dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute at @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] run playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0

execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=minecraft:wither_skeleton,distance=20..,tag=boss] if score $attack boss matches 2.. run scoreboard players set $attack boss 1


##Again

execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[gamemode=adventure,distance=..2.5,tag=playing] minecraft:instant_damage 1 1 true
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:coarse_dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=minecraft:wither_skeleton,distance=20..,tag=boss] if score $attack boss matches 2.. run scoreboard players set $attack boss 1

##Again

execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run tp @s ^ ^ ^-0.5
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run effect give @a[gamemode=adventure,distance=..2.5,tag=playing] minecraft:instant_damage 1 1 true
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:coarse_dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 1 1 1 0.25 10
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 1 1 1 0.25 10

##Playsound
execute as @e[type=minecraft:area_effect_cloud,tag=stone_monster_laser] at @s if entity @e[type=minecraft:wither_skeleton,distance=20..,tag=boss] if score $attack boss matches 2.. run scoreboard players set $attack boss 1
return 1