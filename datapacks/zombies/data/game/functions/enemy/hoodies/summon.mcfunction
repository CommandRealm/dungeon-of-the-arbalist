# Hooded Zombies Miniboss
summon minecraft:zombie ~ ~ ~ {Tags:["miniboss","hoodie_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6381921},Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6381921}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1244970690,-575387971,-1499071169,1892321511],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzMjU0ZjlhMGQ0M2E4MWJlMzgwY2U2MmM4OWE4NDEzNDE3YzU3OGU4OGIwNTAzMjRhZDk0NzEyYzAifX19"}]}}}}],Attributes:[{Name:"generic.movement_speed",Base:0.3855d},{Name:"generic.follow_range",Base:1024d},{Name:"generic.attack_damage",Base:4}],CustomNameVisible:1b}

#Set stats
scoreboard players set @e[type=zombie,tag=hoodie_miniboss,tag=needs_initialization] enemy_health 300

execute as @e[type=zombie,tag=needs_initialization] at @s run function game:enemy/initialize
execute as @e[type=zombie,tag=hoodie_miniboss] run attribute @s generic.follow_range base set 1024

execute store result score $invisible_hoodies calculate if entity @e[type=zombie,tag=hoodie_miniboss,tag=invisible_hoodie]
execute unless score $invisible_hoodies calculate matches 2.. as @e[type=zombie,tag=hoodie_miniboss,tag=!invisible_hoodie,limit=1,sort=random] at @s run function game:enemy/hoodies/hide

setblock ~ ~ ~ air
kill @s