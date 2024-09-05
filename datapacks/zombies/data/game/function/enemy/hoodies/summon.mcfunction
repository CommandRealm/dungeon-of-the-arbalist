# Hooded Zombies Miniboss
summon minecraft:zombie ~ ~ ~ {Tags:["miniboss","hoodie_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:6381921},"minecraft:enchantments":{levels:{"minecraft:depth_strider":5}}},count:1},{},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:6381921}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1244970690,-575387971,-1499071169,1892321511],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}},count:1}],CustomNameVisible:1b,attributes:[{id:"minecraft:generic.movement_speed",base:0.3855d},{id:"minecraft:generic.follow_range",base:1024.0d},{id:"minecraft:generic.attack_damage",base:4.0d}]}

#Set stats
scoreboard players set @e[type=minecraft:zombie,tag=hoodie_miniboss,tag=needs_initialization] enemy_health 300

execute as @e[type=minecraft:zombie,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=minecraft:zombie,tag=hoodie_miniboss] run attribute @s minecraft:generic.follow_range base set 1024

execute store result score $invisible_hoodies calculate if entity @e[type=minecraft:zombie,tag=hoodie_miniboss,tag=invisible_hoodie]
execute unless score $invisible_hoodies calculate matches 2.. as @e[type=minecraft:zombie,tag=hoodie_miniboss,tag=!invisible_hoodie,sort=random,limit=1] at @s run function game:enemy/hoodies/hide

setblock ~ ~ ~ minecraft:air
kill @s
return 1