##Called to change the wave indiactor.
tp @e[type=zombie,tag=tutorial_wave_indicator] 0 0 0
kill @e[type=zombie,tag=tutorial_wave_indicator]
tp @e[type=cave_spider,tag=tutorial_wave_indicator] 0 0 0
kill @e[type=cave_spider,tag=tutorial_wave_indicator]

scoreboard players set $wave_time tutorial 50

scoreboard players add $wave tutorial 1

execute if score $wave tutorial matches 4.. run scoreboard players set $wave tutorial 1

execute if score $wave tutorial matches 1.. run summon zombie 5 82 -44 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 2.. run summon zombie 6 82 -45 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 2.. run summon cave_spider 4 82 -45 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}
execute if score $wave tutorial matches 3.. run summon zombie 3 82 -46 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:5}]}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-179057810,2055423683,-1976388893,-1719646153],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZiOGQ4NzQ1ZjZmYzdhMGE3NzM1NGNlMWE5ZjMwNDY4MTdmNjZkMmQzYWZkMWJjZGFjNmQyZDEwZjM3OSJ9fX0="}]}}}}]}
execute if score $wave tutorial matches 3.. run summon cave_spider 2 82 -47 {Tags:["tutorial_wave_indicator"],Invulnerable:1b,NoAI:1b,Silent:1b}

##sound
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.67
execute at @e[type=zombie,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.8

execute at @e[type=cave_spider,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0
execute at @e[type=cave_spider,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.67
execute at @e[type=cave_spider,tag=tutorial_wave_indicator] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.8
